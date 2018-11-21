#ifndef _CONFIG_HPP

#include <eosiolib/asset.hpp>
#include "utils.hpp"

#define EOS_SYMBOL S(4, EOS)

const asset cost_table( const uint64_t &n ) {
    if ( n >= 429600 ) return asset( 1, EOS_SYMBOL ) ;
    else if ( n >= 408120 ) return asset( string_to_price("1.100"), EOS_SYMBOL ) ;
    else if ( n >= 386640 ) return asset( string_to_price("1.210"), EOS_SYMBOL ) ;
    else if ( n >= 365160 ) return asset( string_to_price("1.331"), EOS_SYMBOL ) ;
    else if ( n >= 343680 ) return asset( string_to_price("1.464"), EOS_SYMBOL ) ;
    else if ( n >= 322200 ) return asset( string_to_price("1.611"), EOS_SYMBOL ) ;
    else if ( n >= 279240 ) return asset( string_to_price("1.772"), EOS_SYMBOL ) ;

    else if ( n >= 408120 ) return asset( string_to_price("1.949"), EOS_SYMBOL ) ; // ???

    else if ( n >= 257760 ) return asset( string_to_price("2.144"), EOS_SYMBOL ) ;
    else if ( n >= 236280 ) return asset( string_to_price("2.358"), EOS_SYMBOL ) ;
    else if ( n >= 214800 ) return asset( string_to_price("2.594"), EOS_SYMBOL ) ;
    else if ( n >= 193320 ) return asset( string_to_price("2.853"), EOS_SYMBOL ) ;
    else if ( n >= 171840 ) return asset( string_to_price("3.138"), EOS_SYMBOL ) ;
    else if ( n >= 150360 ) return asset( string_to_price("3.452"), EOS_SYMBOL ) ;
    else if ( n >= 128880 ) return asset( string_to_price("3.797"), EOS_SYMBOL ) ;
    else if ( n >= 107400 ) return asset( string_to_price("4.177"), EOS_SYMBOL ) ;
    else if ( n >= 85920 ) return asset( string_to_price("4.595"), EOS_SYMBOL ) ;
    else if ( n >= 64440 ) return asset( string_to_price("5.054"), EOS_SYMBOL ) ;
    else if ( n >= 42960 ) return asset( string_to_price("5.560"), EOS_SYMBOL ) ;
    else if ( n >= 21480 ) return asset( string_to_price("6.116"), EOS_SYMBOL ) ;
    else return asset( string_to_price("6.116"), EOS_SYMBOL ) ;

}

#endif

/*
int i = 0 ;
for ( i = 0 ; i < 20 ; i++ )
    if ( remainamount >= ( i / 100 ) * totalmount )
        return asset( "EOS", initminingcost * pow( 1.1, i ) ) ;
    return asset( "EOS", initminingcost * pow( 1.1, --i ) ) ;
*/

/*
剩余总量为429,600张时	挖矿成本为        1EOS进行一次挖矿
剩余总量为408,120张时	挖矿成本增加到1.100EOS进行一次挖矿
剩余总量为386,640张时	挖矿成本增加到1.210EOS进行一次挖矿
剩余总量为365,160张时	挖矿成本增加到1.331EOS进行一次挖矿
剩余总量为343,680张时	挖矿成本增加到1.464EOS进行一次挖矿
剩余总量为322,200张时	挖矿成本增加到1.611EOS进行一次挖矿
剩余总量为279,240张时	挖矿成本增加到1.772EOS进行一次挖矿
剩余总量为408,120张时	挖矿成本增加到1.949EOS进行一次挖矿
剩余总量为257,760张时	挖矿成本增加到2.144EOS进行一次挖矿
剩余总量为236,280张时	挖矿成本增加到2.358EOS进行一次挖矿
剩余总量为214,800张时	挖矿成本增加到2.594EOS进行一次挖矿
剩余总量为193,320张时	挖矿成本增加到2.853EOS进行一次挖矿
剩余总量为171,840张时	挖矿成本增加到3.138EOS进行一次挖矿
剩余总量为150,360张时	挖矿成本增加到3.452EOS进行一次挖矿
剩余总量为128,880张时	挖矿成本增加到3.797EOS进行一次挖矿
剩余总量为107,400张时	挖矿成本增加到4.177EOS进行一次挖矿
剩余总量为 85,920张时	挖矿成本增加到4.595EOS进行一次挖矿
剩余总量为 64,440张时	挖矿成本增加到5.054EOS进行一次挖矿
剩余总量为 42,960张时	挖矿成本增加到5.560EOS进行一次挖矿
剩余总量为 21,480张时	挖矿成本增加到6.116EOS进行一次挖矿
*/