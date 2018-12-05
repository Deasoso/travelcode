#ifndef _CONFIG_HPP

#include <eosiolib/asset.hpp>
#include "utils.hpp"

#define EOS_SYMBOL S(4, EOS)
#define CCC_SYMBOL S(4, CCC)
#define CCC_MAX_SUPPLY 30000000

#define DEF_SPONSOR N(rukamoemoe51)


const asset cost_table( const uint64_t &n ) {
    if ( n >= 429600 ) return asset( string_to_price("1.0000"), EOS_SYMBOL ) ;
    else if ( n >= 408120 ) return asset( string_to_price("1.1000"), EOS_SYMBOL ) ;
    else if ( n >= 386640 ) return asset( string_to_price("1.2100"), EOS_SYMBOL ) ;
    else if ( n >= 365160 ) return asset( string_to_price("1.3310"), EOS_SYMBOL ) ;
    else if ( n >= 343680 ) return asset( string_to_price("1.4640"), EOS_SYMBOL ) ;
    else if ( n >= 322200 ) return asset( string_to_price("1.6110"), EOS_SYMBOL ) ;
    else if ( n >= 300720 ) return asset( string_to_price("1.7720"), EOS_SYMBOL ) ;
    else if ( n >= 279240 ) return asset( string_to_price("1.9490"), EOS_SYMBOL ) ;
    else if ( n >= 257760 ) return asset( string_to_price("2.1440"), EOS_SYMBOL ) ;
    else if ( n >= 236280 ) return asset( string_to_price("2.3580"), EOS_SYMBOL ) ;
    else if ( n >= 214800 ) return asset( string_to_price("2.5940"), EOS_SYMBOL ) ;
    else if ( n >= 193320 ) return asset( string_to_price("2.8530"), EOS_SYMBOL ) ;
    else if ( n >= 171840 ) return asset( string_to_price("3.1380"), EOS_SYMBOL ) ;
    else if ( n >= 150360 ) return asset( string_to_price("3.4520"), EOS_SYMBOL ) ;
    else if ( n >= 128880 ) return asset( string_to_price("3.7970"), EOS_SYMBOL ) ;
    else if ( n >= 107400 ) return asset( string_to_price("4.1770"), EOS_SYMBOL ) ;
    else if ( n >= 85920 ) return asset( string_to_price("4.5950"), EOS_SYMBOL ) ;
    else if ( n >= 64440 ) return asset( string_to_price("5.0540"), EOS_SYMBOL ) ;
    else if ( n >= 42960 ) return asset( string_to_price("5.5600"), EOS_SYMBOL ) ;
    else if ( n >= 21480 ) return asset( string_to_price("6.1160"), EOS_SYMBOL ) ;
    else return asset( string_to_price("6.1160"), EOS_SYMBOL ) ;

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