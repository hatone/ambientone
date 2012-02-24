Hid hi;
HidMsg msg;

0 => int device;
if( me.args() ) me.arg(0) => Std.atoi => device;
if( !hi.openKeyboard( device ) ) me.exit();

while( true )
{
    hi => now;
    while( hi.recv( msg ) )
    {
        if( msg.isButtonDown() )
        {
            <<< msg.which >>>;
        }
    }
}
