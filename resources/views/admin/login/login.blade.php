@include('layouts.font_header')

<div class="form_body" style=" background-color:#F3F3F3; padding-top: 40px; padding-bottom: 40px;">

    <div class="container">

        <div class="row">

            <div class="col-md-3 col2"></div>

            <div class="col-md-6 col2">

                <h2>User Login:<span><a href="{{ url('register') }}"> OR registration</a></span></h2>

                <hr>

                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div class="form-group ">
                        <label for="email" class="col-md-4 col-form-label ">{{ __('E-Mail Address') }}</label>

                        <input id="email" type="email"
                            class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email"
                            value="{{ old('email') }}" required autofocus>

                        @if ($errors->has('email'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                        @endif

                    </div>

                    <div class="form-group ">
                        <label for="password" class="col-md-4 col-form-label ">{{ __('Password') }}</label>

                        <input id="password" type="password"
                            class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password"
                            required>

                        @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                        @endif

                    </div>

                    <div class="form-group ">

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                {{ old('remember') ? 'checked' : '' }}>

                            <label class="form-check-label" for="remember">
                                {{ __('Remember Me') }}
                            </label>
                        </div>

                    </div>

                    <div class="form-group  mb-0">

                        <button type="submit" class="btn btn-primary">
                            {{ __('Login') }}
                        </button>

                        @if (Route::has('password.request'))
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                            {{ __('Forgot Your Password?') }}
                        </a>
                        @endif

                    </div>

                </form>

            </div>

            <div class="col-md-3 col2">
            </div>

        </div>

    </div>

</div>
@include('layouts/font_footer')