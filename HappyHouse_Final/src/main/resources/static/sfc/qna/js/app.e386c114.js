(function(t){function e(e){for(var a,i,o=e[0],l=e[1],c=e[2],d=0,p=[];d<o.length;d++)i=o[d],Object.prototype.hasOwnProperty.call(s,i)&&s[i]&&p.push(s[i][0]),s[i]=0;for(a in l)Object.prototype.hasOwnProperty.call(l,a)&&(t[a]=l[a]);u&&u(e);while(p.length)p.shift()();return r.push.apply(r,c||[]),n()}function n(){for(var t,e=0;e<r.length;e++){for(var n=r[e],a=!0,o=1;o<n.length;o++){var l=n[o];0!==s[l]&&(a=!1)}a&&(r.splice(e--,1),t=i(i.s=n[0]))}return t}var a={},s={app:0},r=[];function i(e){if(a[e])return a[e].exports;var n=a[e]={i:e,l:!1,exports:{}};return t[e].call(n.exports,n,n.exports,i),n.l=!0,n.exports}i.m=t,i.c=a,i.d=function(t,e,n){i.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},i.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},i.t=function(t,e){if(1&e&&(t=i(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var n=Object.create(null);if(i.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var a in t)i.d(n,a,function(e){return t[e]}.bind(null,a));return n},i.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return i.d(e,"a",e),e},i.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},i.p="";var o=window["webpackJsonp"]=window["webpackJsonp"]||[],l=o.push.bind(o);o.push=e,o=o.slice();for(var c=0;c<o.length;c++)e(o[c]);var u=l;r.push([0,"chunk-vendors"]),n()})({0:function(t,e,n){t.exports=n("56d7")},"034f":function(t,e,n){"use strict";var a=n("85ec"),s=n.n(a);s.a},"0d66":function(t,e,n){"use strict";var a=n("7fa9"),s=n.n(a);s.a},"3b7b":function(t,e,n){},4678:function(t,e,n){var a={"./af":"2bfb","./af.js":"2bfb","./ar":"8e73","./ar-dz":"a356","./ar-dz.js":"a356","./ar-kw":"423e","./ar-kw.js":"423e","./ar-ly":"1cfd","./ar-ly.js":"1cfd","./ar-ma":"0a84","./ar-ma.js":"0a84","./ar-sa":"8230","./ar-sa.js":"8230","./ar-tn":"6d83","./ar-tn.js":"6d83","./ar.js":"8e73","./az":"485c","./az.js":"485c","./be":"1fc1","./be.js":"1fc1","./bg":"84aa","./bg.js":"84aa","./bm":"a7fa","./bm.js":"a7fa","./bn":"9043","./bn.js":"9043","./bo":"d26a","./bo.js":"d26a","./br":"6887","./br.js":"6887","./bs":"2554","./bs.js":"2554","./ca":"d716","./ca.js":"d716","./cs":"3c0d","./cs.js":"3c0d","./cv":"03ec","./cv.js":"03ec","./cy":"9797","./cy.js":"9797","./da":"0f14","./da.js":"0f14","./de":"b469","./de-at":"b3eb","./de-at.js":"b3eb","./de-ch":"bb71","./de-ch.js":"bb71","./de.js":"b469","./dv":"598a","./dv.js":"598a","./el":"8d47","./el.js":"8d47","./en-au":"0e6b","./en-au.js":"0e6b","./en-ca":"3886","./en-ca.js":"3886","./en-gb":"39a6","./en-gb.js":"39a6","./en-ie":"e1d3","./en-ie.js":"e1d3","./en-il":"7333","./en-il.js":"7333","./en-in":"ec2e","./en-in.js":"ec2e","./en-nz":"6f50","./en-nz.js":"6f50","./en-sg":"b7e9","./en-sg.js":"b7e9","./eo":"65db","./eo.js":"65db","./es":"898b","./es-do":"0a3c","./es-do.js":"0a3c","./es-us":"55c9","./es-us.js":"55c9","./es.js":"898b","./et":"ec18","./et.js":"ec18","./eu":"0ff2","./eu.js":"0ff2","./fa":"8df4","./fa.js":"8df4","./fi":"81e9","./fi.js":"81e9","./fil":"d69a","./fil.js":"d69a","./fo":"0721","./fo.js":"0721","./fr":"9f26","./fr-ca":"d9f8","./fr-ca.js":"d9f8","./fr-ch":"0e49","./fr-ch.js":"0e49","./fr.js":"9f26","./fy":"7118","./fy.js":"7118","./ga":"5120","./ga.js":"5120","./gd":"f6b4","./gd.js":"f6b4","./gl":"8840","./gl.js":"8840","./gom-deva":"aaf2","./gom-deva.js":"aaf2","./gom-latn":"0caa","./gom-latn.js":"0caa","./gu":"e0c5","./gu.js":"e0c5","./he":"c7aa","./he.js":"c7aa","./hi":"dc4d","./hi.js":"dc4d","./hr":"4ba9","./hr.js":"4ba9","./hu":"5b14","./hu.js":"5b14","./hy-am":"d6b6","./hy-am.js":"d6b6","./id":"5038","./id.js":"5038","./is":"0558","./is.js":"0558","./it":"6e98","./it-ch":"6f12","./it-ch.js":"6f12","./it.js":"6e98","./ja":"079e","./ja.js":"079e","./jv":"b540","./jv.js":"b540","./ka":"201b","./ka.js":"201b","./kk":"6d79","./kk.js":"6d79","./km":"e81d","./km.js":"e81d","./kn":"3e92","./kn.js":"3e92","./ko":"22f8","./ko.js":"22f8","./ku":"2421","./ku.js":"2421","./ky":"9609","./ky.js":"9609","./lb":"440c","./lb.js":"440c","./lo":"b29d","./lo.js":"b29d","./lt":"26f9","./lt.js":"26f9","./lv":"b97c","./lv.js":"b97c","./me":"293c","./me.js":"293c","./mi":"688b","./mi.js":"688b","./mk":"6909","./mk.js":"6909","./ml":"02fb","./ml.js":"02fb","./mn":"958b","./mn.js":"958b","./mr":"39bd","./mr.js":"39bd","./ms":"ebe4","./ms-my":"6403","./ms-my.js":"6403","./ms.js":"ebe4","./mt":"1b45","./mt.js":"1b45","./my":"8689","./my.js":"8689","./nb":"6ce3","./nb.js":"6ce3","./ne":"3a39","./ne.js":"3a39","./nl":"facd","./nl-be":"db29","./nl-be.js":"db29","./nl.js":"facd","./nn":"b84c","./nn.js":"b84c","./oc-lnc":"167b","./oc-lnc.js":"167b","./pa-in":"f3ff","./pa-in.js":"f3ff","./pl":"8d57","./pl.js":"8d57","./pt":"f260","./pt-br":"d2d4","./pt-br.js":"d2d4","./pt.js":"f260","./ro":"972c","./ro.js":"972c","./ru":"957c","./ru.js":"957c","./sd":"6784","./sd.js":"6784","./se":"ffff","./se.js":"ffff","./si":"eda5","./si.js":"eda5","./sk":"7be6","./sk.js":"7be6","./sl":"8155","./sl.js":"8155","./sq":"c8f3","./sq.js":"c8f3","./sr":"cf1e","./sr-cyrl":"13e9","./sr-cyrl.js":"13e9","./sr.js":"cf1e","./ss":"52bd","./ss.js":"52bd","./sv":"5fbd","./sv.js":"5fbd","./sw":"74dc","./sw.js":"74dc","./ta":"3de5","./ta.js":"3de5","./te":"5cbb","./te.js":"5cbb","./tet":"576c","./tet.js":"576c","./tg":"3b1b","./tg.js":"3b1b","./th":"10e8","./th.js":"10e8","./tl-ph":"0f38","./tl-ph.js":"0f38","./tlh":"cf75","./tlh.js":"cf75","./tr":"0e81","./tr.js":"0e81","./tzl":"cf51","./tzl.js":"cf51","./tzm":"c109","./tzm-latn":"b53d","./tzm-latn.js":"b53d","./tzm.js":"c109","./ug-cn":"6117","./ug-cn.js":"6117","./uk":"ada2","./uk.js":"ada2","./ur":"5294","./ur.js":"5294","./uz":"2e8c","./uz-latn":"010e","./uz-latn.js":"010e","./uz.js":"2e8c","./vi":"2921","./vi.js":"2921","./x-pseudo":"fd7e","./x-pseudo.js":"fd7e","./yo":"7f33","./yo.js":"7f33","./zh-cn":"5c3a","./zh-cn.js":"5c3a","./zh-hk":"49ab","./zh-hk.js":"49ab","./zh-mo":"3a6c","./zh-mo.js":"3a6c","./zh-tw":"90ea","./zh-tw.js":"90ea"};function s(t){var e=r(t);return n(e)}function r(t){if(!n.o(a,t)){var e=new Error("Cannot find module '"+t+"'");throw e.code="MODULE_NOT_FOUND",e}return a[t]}s.keys=function(){return Object.keys(a)},s.resolve=r,t.exports=s,s.id="4678"},"56d7":function(t,e,n){"use strict";n.r(e);n("e260"),n("e6cf"),n("cca6"),n("a79d");var a=n("2b0e"),s=n("8c4f"),r=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},i=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",[n("h1",{staticClass:"text-center"},[t._v("메인페이지")])]),n("div",[t._v("만든이 : SSAFY")])])}],o={name:"index",components:{}},l=o,c=n("2877"),u=Object(c["a"])(l,r,i,!1,null,null,null),d=u.exports,p=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t.items.length?n("div",[n("table",{staticClass:"table table-bordered table-condensed"},[n("colgroup",[n("col",{style:{width:"5%"}}),n("col",{style:{width:"50%"}}),n("col",{style:{width:"10%"}}),n("col",{style:{width:"25%"}})]),t._m(0),t._l(t.items,(function(e,a){return n("list-row",{key:a+"_items",attrs:{qnaNo:e.qnaNo,qnaTitle:e.qnaTitle,qnaUserid:e.qnaUserid,qnaDatetime:e.qnaDatetime,replyContent:e.replyContent,replyDatetime:e.replyDatetime,replyUserid:e.replyUserid,uid:t.uid}})}))],2)]):n("div",[t._v("글이 없습니다.")]),t.isLogin?n("div",{staticClass:"text-right"},[n("button",{staticClass:"btn btn-primary",on:{click:t.movePage}},[t._v("등록")])]):t._e()])},f=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("tr",[n("th",[t._v("번호")]),n("th",[t._v("제목")]),n("th",[t._v("작성자")]),n("th",[t._v("날짜")])])}],m=n("bc3a"),v=n.n(m),h=v.a.create({baseURL:"http://localhost:8080/",headers:{"Content-type":"application/json"}}),b=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("tr",[n("td",[t._v(t._s(t.qnaNo))]),t.qnaUserid==t.uid||"admin"==t.uid?n("td",[n("router-link",{attrs:{to:"/qna/read?qnaNo="+t.qnaNo}},[t._v(t._s(t.qnaTitle))])],1):n("td",[t._v(t._s(t.qnaTitle))]),n("td",[t._v(t._s(t.qnaUserid))]),n("td",[t._v(t._s(t.getFormatDate(t.qnaDatetime)))])])},q=[],j=(n("a9e3"),n("c1df")),y=n.n(j),_={name:"row",props:{qnaNo:{type:Number},qnaUserid:{type:String},qnaTitle:{type:String},qnaDatetime:{type:String},uid:{type:String}},methods:{getFormatDate:function(t){return y()(new Date(t)).format("YYYY.MM.DD")}}},C=_,g=Object(c["a"])(C,b,q,!1,null,null,null),k=g.exports,U=n("2f62");a["a"].use(U["a"]);var N=new U["a"].Store({state:{isLogin:!1,uid:""},mutations:{mutateIsLogin:function(t,e){t.isLogin=e,console.log(7)},mutateUserInfo:function(t,e){t.uid=e,console.log(e)}},actions:{login:function(t,e){var n=e.url;h.post("/qna/uid").then((function(e){var a=e.data;console.log(a),t.commit("mutateIsLogin",!0),t.commit("mutateUserInfo",a),Ht.push(n)}))}}}),x={name:"list",components:{ListRow:k},data:function(){return{items:[],isLogin:!1,uid:""}},created:function(){var t=this;this.uid=N.state.uid,h.get("/qna").then((function(e){var n=e.data;console.log(n),t.items=n})).catch((function(){alert("에러가 발생했습니다.")}))},methods:{movePage:function(){this.$router.push("/qna/create")}}},T=x,$=Object(c["a"])(T,p,f,!1,null,null,null),w=$.exports,O=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("create-form",{attrs:{type:"create"}})],1)},D=[],E=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"qnaUserid"}},[t._v("작성자")]),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qnaUserid,expression:"qnaUserid"}],ref:"qnaUserid",staticClass:"form-control",attrs:{type:"text",id:"qnaUserid",placeholder:"작성자를 입력하세요",readonly:""},domProps:{value:t.qnaUserid},on:{input:function(e){e.target.composing||(t.qnaUserid=e.target.value)}}})]),n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"qnaTitle"}},[t._v("제목")]),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qnaTitle,expression:"qnaTitle"}],ref:"qnaTitle",staticClass:"form-control",attrs:{type:"text",id:"qnaTitle",placeholder:"제목을 입력하세요"},domProps:{value:t.qnaTitle},on:{input:function(e){e.target.composing||(t.qnaTitle=e.target.value)}}})]),n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"qnaContent"}},[t._v("내용")]),n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qnaContent,expression:"qnaContent"}],ref:"qnaContent",staticClass:"form-control",attrs:{type:"text",id:"qnaContent",placeholder:"내용을 입력하세요"},domProps:{value:t.qnaContent},on:{input:function(e){e.target.composing||(t.qnaContent=e.target.value)}}})]),n("div",{staticClass:"text-right"},["create"==t.type?n("button",{staticClass:"btn btn-primary",on:{click:t.checkHandler}},[t._v(" 등록 ")]):n("button",{staticClass:"btn btn-primary",on:{click:t.checkHandler}},[t._v("수정")]),n("button",{staticClass:"btn btn-primary",on:{click:t.moveList}},[t._v("목록")])])])},S=[],R={name:"board-Form",props:{type:{type:String}},data:function(){return{qnaNo:"",qnaUserid:"",qnaTitle:"",qnaContent:"",uid:""}},methods:{checkHandler:function(){var t=!0,e="";!this.qnaTitle&&(e="제목 입력해주세요",t=!1,this.$refs.qnaTitle.focus()),t&&!this.qnaContent&&(e="내용 입력해주세요",t=!1,this.$refs.qnaContent.focus()),t?"create"==this.type?this.createHandler():this.updateHandler():alert(e)},createHandler:function(){var t=this;h.post("/qna",{qnaUserid:this.qnaUserid,qnaTitle:this.qnaTitle,qnaContent:this.qnaContent}).then((function(e){var n=e.data,a="등록 처리시 문제가 발생했습니다.";"success"===n&&(a="등록이 완료되었습니다."),alert(a),t.moveList()})).catch((function(){alert("등록 처리시 에러가 발생했습니다.")}))},updateHandler:function(){var t=this;h.put("/qna/".concat(this.qnaNo),{qnaNo:this.qnaNo,qnaUserid:this.qnaUserid,qnaTitle:this.qnaTitle,qnaContent:this.qnaContent}).then((function(e){var n=e.data,a="수정 처리시 문제가 발생했습니다.";"success"===n&&(a="수정이 완료되었습니다."),alert(a),t.moveList()})).catch((function(){alert("수정 처리시 에러가 발생했습니다.")}))},moveList:function(){this.$router.push("/qna/list")}},created:function(){var t=this;this.uid=N.state.uid,this.qnaUserid=this.uid,"update"===this.type&&h.get("/qna/".concat(this.$route.query.qnaNo)).then((function(e){var n=e.data;t.qnaNo=n.qnaNo,t.qnaUserid=n.qnaUserid,t.qnaTitle=n.qnaTitle,t.qnaContent=n.qnaContent})).catch((function(){alert("에러가 발생했습니다.")}))}},z=R,H=Object(c["a"])(z,E,S,!1,null,"62b762d6",null),L=H.exports,P={name:"create",components:{CreateForm:L}},F=P,Y=Object(c["a"])(F,O,D,!1,null,null,null),M=Y.exports,A=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("detail",{attrs:{qnaContent:t.item.qnaContent,qnaTitle:t.item.qnaTitle,qnaUserid:t.item.qnaUserid,qnaDatetime:t.item.qnaDatetime,qnaNo:t.item.qnaNo,replyContent:t.item.replyContent,replyDatetime:t.item.replyDatetime,replyUserid:t.item.replyUserid,uid:t.uid}})],1)},I=[],J=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{align:"center"}},[n("table",{staticClass:"table table-bordered w-50"},[n("tr",[t._v("Q.")]),n("tr",[n("th",[t._v("번호")]),n("td",[t._v(t._s(t.qnaNo))])]),n("tr",[n("th",[t._v("글쓴이")]),n("td",[t._v(t._s(t.qnaUserid))])]),n("tr",[n("th",[t._v("제목")]),n("td",[t._v(t._s(t.qnaTitle))])]),n("tr",[n("th",[t._v("날짜")]),n("td",[t._v(t._s(t.getFormatDate(t.qnaDatetime)))])]),n("tr",[n("td",{attrs:{colspan:"2"}},[t._v(" "+t._s(t.qnaContent)+" ")])])]),n("br"),null!=t.replyContent?n("table",{staticClass:"table table-bordered w-50"},[n("tr",[t._v("A.")]),n("tr",[n("th",[t._v("답변 날짜")]),n("td",[t._v(t._s(t.getFormatDate(t.replyDatetime)))])]),n("tr",[n("th",[t._v("답변 내용")]),n("td",{attrs:{colspan:"2"}},[t._v(" "+t._s(t.replyContent)+" ")])])]):t._e(),n("br"),n("div",{staticClass:"text-center"},[n("router-link",{attrs:{to:"/qna/list"}},[n("button",{staticClass:"btn btn-primary"},[t._v("목록")])]),n("router-link",{attrs:{to:"/qna/update?qnaNo="+t.qnaNo}},[n("button",{staticClass:"btn btn-primary"},[t._v("수정")])]),n("router-link",{attrs:{to:"/qna/delete?qnaNo="+t.qnaNo}},[n("button",{staticClass:"btn btn-primary"},[t._v("삭제")])]),n("router-link",{attrs:{to:"/qna/createR?qnaNo="+t.qnaNo}},["admin"==t.uid&&null==t.replyContent?n("button",{staticClass:"btn btn-primary"},[t._v("답글 등록")]):t._e()]),n("router-link",{attrs:{to:"/qna/updateR?qnaNo="+t.qnaNo}},["admin"==t.uid&&null!=t.replyContent?n("button",{staticClass:"btn btn-primary"},[t._v("답글 수정")]):t._e()]),n("router-link",{attrs:{to:"/qna/deleteR?qnaNo="+t.qnaNo}},["admin"==t.uid&&null!=t.replyContent?n("button",{staticClass:"btn btn-primary"},[t._v("답글 삭제")]):t._e()])],1)])},Q=[],B={name:"detail",props:{qnaNo:{type:Number},qnaUserid:{type:String},qnaTitle:{type:String},qnaContent:{type:String},qnaDatetime:{type:String},replyContent:{type:String},replyDatetime:{type:String},replyUserid:{type:String},uid:{type:String}},methods:{getFormatDate:function(t){return y()(new Date(t)).format("YYYY.MM.DD HH:mm:ss")}}},G=B,K=Object(c["a"])(G,J,Q,!1,null,null,null),V=K.exports,W={name:"read",components:{Detail:V},data:function(){return{item:{},uid:""}},created:function(){var t=this;this.uid=N.state.uid,h.get("/qna/".concat(this.$route.query.qnaNo)).then((function(e){var n=e.data;t.item=n,console.dir(n)}))}},X=W,Z=Object(c["a"])(X,A,I,!1,null,null,null),tt=Z.exports,et=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("update-form",{attrs:{type:"update"}})],1)},nt=[],at={name:"update",components:{UpdateForm:L}},st=at,rt=Object(c["a"])(st,et,nt,!1,null,null,null),it=rt.exports,ot=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t._v("삭제중...")])},lt=[],ct={name:"delete",created:function(){var t=this;h.delete("/qna/".concat(this.$route.query.qnaNo)).then((function(e){var n=e.data,a="삭제 처리시 문제가 발생했습니다.";"success"===n&&(a="삭제가 완료되었습니다."),console.log(n),alert(a),t.$router.push("/qna/list")})).catch((function(){alert("삭제 처리시 에러가 발생했습니다.")}))}},ut=ct,dt=Object(c["a"])(ut,ot,lt,!1,null,null,null),pt=dt.exports,ft=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t._v("삭제중...")])},mt=[],vt={name:"deleteR",created:function(){var t=this;h.put("/qna/reply/delete/".concat(this.$route.query.qnaNo),{qnaNo:this.$route.query.qnaNo,qnaUserid:this.qnaUserid,qnaTitle:this.qnaTitle,qnaContent:this.qnaContent,replyContent:this.replyContent,replyUserid:this.uid}).then((function(e){var n=e.data,a="답글 삭제 처리시 문제가 발생했습니다.";"success"===n&&(a="답글 삭제가 완료되었습니다."),console.log(n),alert(a),t.$router.push("/qna/list")})).catch((function(){alert("답글 삭제 처리시 에러가 발생했습니다.")}))}},ht=vt,bt=Object(c["a"])(ht,ft,mt,!1,null,null,null),qt=bt.exports,jt=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("updateR-form",{attrs:{type:"updateR"}})],1)},yt=[],_t=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"qnaUserid"}},[t._v("작성자")]),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qnaUserid,expression:"qnaUserid"}],ref:"qnaUserid",staticClass:"form-control",attrs:{type:"text",id:"qnaUserid",placeholder:"작성자를 입력하세요",readonly:""},domProps:{value:t.qnaUserid},on:{input:function(e){e.target.composing||(t.qnaUserid=e.target.value)}}})]),n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"qnaTitle"}},[t._v("제목")]),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qnaTitle,expression:"qnaTitle"}],ref:"qnaTitle",staticClass:"form-control",attrs:{type:"text",id:"qnaTitle",placeholder:"제목을 입력하세요",readonly:""},domProps:{value:t.qnaTitle},on:{input:function(e){e.target.composing||(t.qnaTitle=e.target.value)}}})]),n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"qnaContent"}},[t._v("내용")]),n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qnaContent,expression:"qnaContent"}],ref:"qnaContent",staticClass:"form-control",attrs:{type:"text",id:"qnaContent",placeholder:"내용을 입력하세요",readonly:""},domProps:{value:t.qnaContent},on:{input:function(e){e.target.composing||(t.qnaContent=e.target.value)}}}),n("br")]),n("div",{staticClass:"form-group"},[n("label",{attrs:{for:"replyContent"}},[t._v("답글 내용")]),n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.replyContent,expression:"replyContent"}],ref:"replyContent",staticClass:"form-control",attrs:{type:"text",id:"replyContent",placeholder:"내용을 입력하세요"},domProps:{value:t.replyContent},on:{input:function(e){e.target.composing||(t.replyContent=e.target.value)}}})]),n("br"),n("div",{staticClass:"text-right"},["createR"==t.type?n("button",{staticClass:"btn btn-primary",on:{click:t.checkHandler}},[t._v(" 등록 ")]):n("button",{staticClass:"btn btn-primary",on:{click:t.checkHandler}},[t._v("수정")]),n("button",{staticClass:"btn btn-primary",on:{click:t.moveList}},[t._v("목록")])])])},Ct=[],gt={name:"boardR-Form",props:{type:{type:String}},data:function(){return{qnaNo:"",qnaUserid:"",qnaTitle:"",qnaContent:"",replyContent:"",uid:""}},methods:{checkHandler:function(){var t=!0,e="";t&&!this.replyContent&&(e="내용 입력해주세요",t=!1,this.$refs.replyContent.focus()),t?"createR"==this.type?this.createHandler():this.updateHandler():alert(e)},createHandler:function(){var t=this;h.put("/qna/reply/".concat(this.qnaNo),{qnaNo:this.qnaNo,qnaUserid:this.qnaUserid,qnaTitle:this.qnaTitle,qnaContent:this.qnaContent,replyContent:this.replyContent,replyUserid:this.uid}).then((function(e){var n=e.data,a="답글 등록 처리시 문제가 발생했습니다.";"success"===n&&(a="답글 등록이 완료되었습니다."),alert(a),t.moveList()})).catch((function(){alert("답글 등록 처리시 에러가 발생했습니다.")}))},updateHandler:function(){var t=this;h.put("/qna/reply/".concat(this.qnaNo),{qnaNo:this.qnaNo,qnaUserid:this.qnaUserid,qnaTitle:this.qnaTitle,qnaContent:this.qnaContent,replyContent:this.replyContent,replyUserid:this.uid}).then((function(e){var n=e.data,a="답글 수정 처리시 문제가 발생했습니다.";"success"===n&&(a="답글 수정이 완료되었습니다."),alert(a),t.moveList()})).catch((function(){alert("답글 수정 처리시 에러가 발생했습니다.")}))},moveList:function(){this.$router.push("/qna/list")}},created:function(){var t=this;this.uid=N.state.uid,h.get("/qna/".concat(this.$route.query.qnaNo)).then((function(e){var n=e.data;t.qnaNo=n.qnaNo,t.qnaUserid=n.qnaUserid,t.qnaTitle=n.qnaTitle,t.qnaContent=n.qnaContent,t.replyUserid=n.replyUserid,t.replyContent=n.replyContent})).catch((function(){alert("에러가 발생했습니다.")}))}},kt=gt,Ut=Object(c["a"])(kt,_t,Ct,!1,null,"413e3e29",null),Nt=Ut.exports,xt={name:"updateR",components:{UpdateRForm:Nt}},Tt=xt,$t=Object(c["a"])(Tt,jt,yt,!1,null,null,null),wt=$t.exports,Ot=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("createR-form",{attrs:{type:"createR"}})],1)},Dt=[],Et={name:"createR",components:{CreateRForm:Nt}},St=Et,Rt=Object(c["a"])(St,Ot,Dt,!1,null,null,null),zt=Rt.exports;a["a"].use(s["a"]);var Ht=new s["a"]({mode:"history",routes:[{path:"/",name:"index",component:d,redirect:"/qna/list"},{path:"/qna",name:"index",component:d},{path:"/qna/list",name:"list",component:w},{path:"/qna/create",name:"create",component:M},{path:"/qna/read",name:"read",component:tt},{path:"/qna/update",name:"update",component:it},{path:"/qna/delete",name:"delete",component:pt},{path:"/qna/createR",name:"createR",component:zt},{path:"/qna/updateR",name:"updateR",component:wt},{path:"/qna/deleteR",name:"deleteR",component:qt}]}),Lt=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"app"}},[n("nav-header"),n("br"),n("h2",{staticClass:"text-center"},[t._v("HappyHouse QnA 게시판")]),n("br"),n("router-view",{staticClass:"container"}),n("end-footer")],1)},Pt=[],Ft=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t._m(0),n("nav",{staticClass:"navbar navbar-expand-sm bg-dark navbar-dark sticky-top justify-content-end",staticStyle:{"margin-top":"0"}},[n("ul",{staticClass:"navbar-nav"},[t._m(1),t._m(2),t._m(3),0==this.$store.state.isLogin?n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/signupPage"}},[t._v("회원가입")])]):t._e(),0==this.$store.state.isLogin?n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/loginPage"}},[t._v("로그인")])]):t._e(),this.$store.state.isLogin?n("li",{staticClass:"nav-item"},[n("router-link",{staticClass:"nav-link",attrs:{to:"/qna/list"}},[t._v("QnA")])],1):t._e(),"admin"==this.$store.state.uid?n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/userList"}},[t._v("회원관리")])]):t._e(),this.$store.state.isLogin?n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/myPage"}},[t._v("마이페이지")])]):t._e(),this.$store.state.isLogin?n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/user/logout"}},[t._v("로그아웃")])]):t._e()])])])},Yt=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("section",{staticClass:"house"},[n("section",{staticClass:"heading"},[n("h2",{staticClass:"heading"},[t._v("HappyHouse")]),n("h3",{staticClass:"heading_s"},[t._v("Find Your Dream Home")])])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/"}},[t._v("메인으로")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/mapPage"}},[t._v("부동산")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"/sfc/board/index.html"}},[t._v("공지사항")])])}],Mt={name:"AppHeader"},At=Mt,It=(n("0d66"),Object(c["a"])(At,Ft,Yt,!1,null,null,null)),Jt=It.exports,Qt=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"jumbotron text-center mt-5 mb-0",staticStyle:{clear:"both"}},[n("br"),t._m(0),n("CENTER",[n("br"),t._v(" Created by Jiwon & Soonbin"),n("br"),t._v(" 사전 도움말 - 이용약관 -개인정보취급방침 - 책임의 한계와 법적고지 - 고객센터"),n("br"),t._v(" Copyright ⓒ 2020 SSAFY. All Rights Reserved. ")]),n("br")],1)},Bt=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("p",{staticClass:"logo"},[n("b",[t._v("H"),n("span",[t._v("app")]),t._v("y"),n("span",[t._v("ho")]),n("span",[t._v("use")])])])}],Gt={},Kt=Gt,Vt=(n("57ef"),Object(c["a"])(Kt,Qt,Bt,!1,null,null,null)),Wt=Vt.exports,Xt={name:"App",components:{NavHeader:Jt,EndFooter:Wt},created:function(){N.dispatch("login",{url:"/qna/list"})}},Zt=Xt,te=(n("034f"),Object(c["a"])(Zt,Lt,Pt,!1,null,null,null)),ee=te.exports;a["a"].config.productionTip=!1,new a["a"]({router:Ht,store:N,render:function(t){return t(ee)}}).$mount("#app")},"57ef":function(t,e,n){"use strict";var a=n("3b7b"),s=n.n(a);s.a},"7fa9":function(t,e,n){},"85ec":function(t,e,n){}});
//# sourceMappingURL=app.e386c114.js.map