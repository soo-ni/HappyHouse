(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["about"],{"5cd0":function(t,e,n){"use strict";var a=n("99e7"),i=n.n(a);i.a},"730d":function(t,e,n){"use strict";n.r(e);var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t.items.length?n("div",{staticClass:"table-wrapper"},[n("table",[t._m(0),n("tbody",t._l(t.items,(function(t,e){return n("list-row",{key:e+"_items",attrs:{boardId:t.boardId,title:t.title,userSeq:t.userSeq,regDt:t.regDt}})})),1)])]):n("div",[t._v("글이 없습니다.")]),n("div",{staticClass:"btn-cover"},[n("ul",{staticClass:"pagination justify-content-center"},t._l(t.pageCount,(function(e,a){return n("li",{key:a,staticClass:"page-item",on:{click:function(n){return t.movePaging(e)}}},[t._v(t._s(e))])})),0)]),t.isLogin&&"admin"==t.uid?n("div",{staticClass:"text-right"},[n("button",{staticClass:"btn special",on:{click:t.movePage}},[t._v("등록")])]):t._e()])},i=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("thead",[n("tr",[n("th",[t._v("번호")]),n("th",[t._v("제목")]),n("th",[t._v("작성자")]),n("th",[t._v("날짜")])])])}],o=n("c21c"),s=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("tr",{staticStyle:{cursor:"pointer"},on:{click:function(e){return t.moveDetail("/board/read?boardId="+t.boardId)}}},[n("td",[t._v(t._s(t.boardId))]),n("td",[t._v(" "+t._s(t.title)+" ")]),n("td",[t._v(t._s(t.userSeq))]),n("td",[t._v(t._s(t.getFormatDate(t.regDt)))])])},r=[],c=(n("a9e3"),n("c1df")),u=n.n(c),l={name:"row",props:{boardId:{type:Number},userSeq:{type:String},title:{type:String},regDt:{type:String},uid:{type:String}},methods:{getFormatDate:function(t){return console.log(this.uid),u()(new Date(t)).format("YYYY.MM.DD")},moveDetail:function(t){this.$router.push(t)}}},d=l,g=n("2877"),p=Object(g["a"])(d,s,r,!1,null,null,null),h=p.exports,f=n("07a4"),m={name:"list",components:{ListRow:h},data:function(){return{items:[],isLogin:!1,uid:"",pageNum:1,pageSize:10,totalCnt:0}},mounted:function(){var t=this;this.isLogin=f["a"].state.isLogin,this.uid=f["a"].state.uid,console.log(this.uid),o["a"].get("/board/total").then((function(e){var n=e.data;console.log(n),t.totalCnt=n.totalCnt})).catch((function(){alert("에러가 발생했습니다.")})),console.log("created"),o["a"].post("/board/page",{offset:0,limit:10}).then((function(e){var n=e.data;console.log(n),t.items=n})).catch((function(){alert("에러가 발생했습니다.")}))},methods:{movePage:function(){this.$router.push("/board/create")},movePaging:function(t){var e=this;this.pageNum=t,o["a"].post("/board/page",{offset:(this.pageNum-1)*this.pageSize,limit:this.pageSize}).then((function(t){var n=t.data;console.log(n),e.items=n})).catch((function(){alert("에러가 발생했습니다.")}))}},computed:{pageCount:function(){var t=Math.floor((this.totalCnt-1)/this.pageSize)+1;return t}}},v=m,_=(n("5cd0"),Object(g["a"])(v,a,i,!1,null,null,null));e["default"]=_.exports},"99e7":function(t,e,n){}}]);
//# sourceMappingURL=about.4d7baa78.js.map