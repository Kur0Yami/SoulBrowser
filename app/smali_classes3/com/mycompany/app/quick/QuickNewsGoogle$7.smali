.class Lcom/mycompany/app/quick/QuickNewsGoogle$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$7;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$7;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "(function(){var dsl=null;var sds=document.querySelectorAll(\"script[class*=\'ds:\']\");if(sds&&(sds.length>0)){for(var i=0;i<sds.length;i++){var sde=sds[i].innerText;if(sde&&sde.includes(\'http\')){if(!dsl||(sde.length>dsl.length)){dsl=sde;}}}}android.onLoadData(dsl);})();"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string v0, "function myArt(doc,tag){if(doc){var ele=doc.querySelectorAll(tag);if((ele!=null)&&(ele.length>0)){return ele;}}return null;}function myAr2(doc){if(doc){var ele=myArt(doc,\"div[role=\'listitem\']\");if(ele){return ele;}ele=myArt(doc,\"div[class*=\'Iisyzf\']\");if(ele){return ele;}ele=myArt(doc,\"div[jsdata]\");if(ele){return ele;}ele=myArt(doc,\"article\");if(ele){return ele;}}return null;}function myRef(doc){if(doc){var ele=doc.querySelector(\"a[href]\");if(ele&&ele.href&&(ele.href.indexOf(\'http\')==0)){return ele.href;}}return null;}function myIco(doc){if(doc){var ele=doc.querySelector(\"img[src^=\'https://\']\");if(ele&&ele.src){return ele.src;}}return \'na\';}function myDat(doc){if(doc){var ele=doc.querySelector(\"time[datetime]\");if(ele&&ele.dateTime){return ele.dateTime;}}return \'na\';}(function(){var ttl=null;var srl=null;var rel=null;var icl=null;var dtl=null;var ats=myAr2(document);if((ats!=null)&&(ats.length>0)){for(var i=0;i<ats.length;i++){var atc=ats[i];var tds=atc.querySelectorAll(\"a[data-n-tid]\");if((tds==null)||(tds.length==0))continue;var tex1=null;var tex2=null;for(var j=0;j<tds.length;j++){var text=tds[j].innerText;if(!text)continue;if(!tex1){tex1=text;}else if(!tex2){tex2=text;}else{break;}}if(!tex1)continue;var len1=tex1.length;if(len1==0)continue;if(!tex2)continue;var len2=tex2.length;if(len2==0)continue;var tte;var src;if(len1>len2){tte=tex1;src=tex2;}else{tte=tex2;src=tex1;}var ref=myRef(atc);if(!ref)continue;var ico=myIco(atc);var dat=myDat(atc);if(!ttl){ttl=tte;}else{ttl+=\'!@!\'+tte;}if(!srl){srl=src;}else{srl+=\'!@!\'+src;}if(!rel){rel=ref;}else{rel+=\'!@!\'+ref;}if(!icl){icl=ico;}else{icl+=\'!@!\'+ico;}if(!dtl){dtl=dat;}else{dtl+=\'!@!\'+dat;}}}android.onLoadList(ttl,srl,rel,icl,dtl);})();"

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
