(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/shop-order/shop-order"],{"056b":function(t,e,n){"use strict";n.r(e);var r=n("e3f0"),s=n("4b6a");for(var a in s)"default"!==a&&function(t){n.d(e,t,(function(){return s[t]}))}(a);n("116c");var u,c=n("f0c5"),i=Object(c["a"])(s["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],u);e["default"]=i.exports},"116c":function(t,e,n){"use strict";var r=n("b1a4"),s=n.n(r);s.a},"1cd3":function(t,e,n){"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var r=s(n("a34a"));function s(t){return t&&t.__esModule?t:{default:t}}function a(t,e,n,r,s,a,u){try{var c=t[a](u),i=c.value}catch(o){return void n(o)}c.done?e(i):Promise.resolve(i).then(r,s)}function u(t){return function(){var e=this,n=arguments;return new Promise((function(r,s){var u=t.apply(e,n);function c(t){a(u,r,s,c,i,"next",t)}function i(t){a(u,r,s,c,i,"throw",t)}c(void 0)}))}}var c={data:function(){return{navlist:["全部","未支付","已支付","已发货","已完成","已取消","已退款"],currentIndex:0,pages:1,list:[],mescroll:null,downOption:{auto:!1},upOption:{page:{},noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,status:"",user:""}},onShow:function(){var e=u(r.default.mark((function e(){var n,s;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=t.getStorageSync("nowTable"),e.next=3,this.$api.session(n);case 3:s=e.sent,this.user=s.data,this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll();case 7:case"end":return e.stop()}}),e,this)})));function n(){return e.apply(this,arguments)}return n}(),methods:{navselect:function(t,e){this.currentIndex=t,this.status="全部"==e?"":"已支付"==e?"已支付":e,this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll()},mescrollInit:function(t){this.mescroll=t},downCallback:function(t){this.hasNext=!0,t.resetUpScroll()},upCallback:function(){var t=u(r.default.mark((function t(e){var n,s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return n={page:e.num,limit:e.size},this.status&&(n["status"]=this.status),t.next=4,this.$api.page("orders",n);case 4:s=t.sent,1==e.num&&(this.list=[]),this.list=this.list.concat(s.data.list),0==s.data.list.length&&(this.hasNext=!1),e.endSuccess(e.size,this.hasNext);case 9:case"end":return t.stop()}}),t,this)})));function e(e){return t.apply(this,arguments)}return e}(),onCancelTap:function(){var e=u(r.default.mark((function e(n){var s;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:s=this,t.showModal({title:"提示",content:"是否确认退款",success:function(){var e=u(r.default.mark((function e(a){var u;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(u=t.getStorageSync("nowTable"),!a.confirm){e.next=10;break}return n.status="已退款",e.next=5,s.$api.update("orders",n);case 5:e.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll(),1==n.type?s.user.money=s.user.money+n.total:2==n.type&&(s.user.jifen=s.user.jifen+n.total),s.$api.update(u,s.user);case 10:case"end":return e.stop()}}),e)})));function a(t){return e.apply(this,arguments)}return a}()});case 2:case"end":return e.stop()}}),e,this)})));function n(t){return e.apply(this,arguments)}return n}(),cancel:function(){var e=u(r.default.mark((function e(n){var s;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:s=this,t.showModal({title:"提示",content:"是否取消订单",success:function(){var t=u(r.default.mark((function t(e){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=7;break}return n.status="已取消",t.next=4,s.$api.update("orders",n);case 4:t.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll();case 7:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()});case 2:case"end":return e.stop()}}),e,this)})));function n(t){return e.apply(this,arguments)}return n}(),pay:function(){var e=u(r.default.mark((function e(n){var s,a;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:s=this,a=t.getStorageSync("nowTable"),t.showModal({title:"提示",content:"是否支付订单",success:function(){var t=u(r.default.mark((function t(e){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=25;break}if(1!=n.type){t.next=12;break}if(!(s.user.money-n.total<0)){t.next=5;break}return s.$utils.msg("余额不足，请先充值"),t.abrupt("return");case 5:return s.$utils.msgBack("支付成功"),s.user.money=s.user.money-n.total,(s.user.jifen||0==s.user.jifen)&&(s.user.jifen=parseFloat(s.user.jifen)+parseFloat(n.total)),t.next=10,s.$api.update(a,s.user);case 10:t.next=20;break;case 12:if(2!=n.type){t.next=20;break}if(!(s.user.jifen-n.total<0)){t.next=16;break}return s.$utils.msg("积分不足，兑换商品失败"),t.abrupt("return");case 16:return s.$utils.msgBack("兑换成功"),s.user.jifen=s.user.jifen-n.total,t.next=20,s.$api.update(a,s.user);case 20:return n.status="已支付",t.next=23,s.$api.update("orders",n);case 23:t.sent,s.mescroll&&s.mescroll.resetUpScroll();case 25:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()});case 3:case"end":return e.stop()}}),e,this)})));function n(t){return e.apply(this,arguments)}return n}(),onConfirm:function(){var e=u(r.default.mark((function e(n){var s;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:s=this,t.showModal({title:"提示",content:"是否确认收货",success:function(){var e=u(r.default.mark((function e(a){return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(t.getStorageSync("nowTable"),!a.confirm){e.next=8;break}return n.status="已完成",e.next=5,s.$api.update("orders",n);case 5:e.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll();case 8:case"end":return e.stop()}}),e)})));function a(t){return e.apply(this,arguments)}return a}()});case 2:case"end":return e.stop()}}),e,this)})));function n(t){return e.apply(this,arguments)}return n}()}};e.default=c}).call(this,n("543d")["default"])},"4b6a":function(t,e,n){"use strict";n.r(e);var r=n("1cd3"),s=n.n(r);for(var a in r)"default"!==a&&function(t){n.d(e,t,(function(){return r[t]}))}(a);e["default"]=s.a},b1a4:function(t,e,n){},e3f0:function(t,e,n){"use strict";var r={"mescroll-uni":function(){return Promise.all([n.e("common/vendor"),n.e("components/mescroll-uni/mescroll-uni")]).then(n.bind(null,"cd66"))}},s=function(){var t=this,e=t.$createElement;t._self._c},a=[];n.d(e,"b",(function(){return s})),n.d(e,"c",(function(){return a})),n.d(e,"a",(function(){return r}))},e8cb:function(t,e,n){"use strict";(function(t){n("6496"),n("921b");r(n("66fd"));var e=r(n("056b"));function r(t){return t&&t.__esModule?t:{default:t}}t(e.default)}).call(this,n("543d")["createPage"])}},[["e8cb","common/runtime","common/vendor"]]]);