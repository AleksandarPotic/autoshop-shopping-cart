<?php

namespace App\Http\Controllers\Auth;

use App\Coupon;
use App\Mail\discountCode;
use App\Mail\verifyEmail;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Str;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        Session::flash('status', 'Uspešna registracija. Poslat vam je email za verifikaciju naloga.');
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'role_id' => 2,
            'password' => bcrypt($data['password']),
            'mobile' => $data['mobile'],
            'street' => $data['street'],
            'city' => $data['city'],
            'postalCode' => $data['postalCode'],
            'birthday' => $data['birthday'],
            'verifyToken' => Str::random(40)
        ]);

        $thisUser = User::findOrFail($user->id);
        $this->sendEmail($thisUser);
        return $user;
    }
    public function sendEmail($thisUser)
    {
        Mail::to($thisUser['email'])->send(new verifyEmail($thisUser));
    }
    public function verifyEmailFirst()
    {
        return view('user.auth.email.verifyEmailFirst');
    }
    public function sendEmailDone($email,$verifyToken)
    {
        $user = User::where(['email'=>$email,'verifyToken'=>$verifyToken])->first();
        if ($user){
            Session::flash('done','Uspešna verifikacija! Vaš nalog je aktivan.');
            User::where(['email'=>$email,'verifyToken'=>$verifyToken])->update(['status'=>'1','verifyToken'=>NULL]);

            $coupon = new Coupon;
            $coupon->discountCode = strtoupper(Str::random(8));
            $coupon->type = 'fixed';
            $coupon->value = 300;
            $coupon->email = $user->email;
            $coupon->save();

            $coupon = Coupon::where('email',$user->email)->first();

            Mail::to($user->email)->send(new discountCode($coupon));
            return redirect(route('login'));
        }else{
            return 'User not found!';
        }

    }
}
