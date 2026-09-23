.class Lcom/mycompany/app/web/WebViewActivity$683;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$683;->c:Lcom/mycompany/app/web/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$683;->c:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-nez v0, :cond_0

    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->kl:Ljava/lang/String;

    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ll:Ljava/lang/String;

    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->ml:Ljava/lang/String;

    iget-wide v5, v1, Lcom/mycompany/app/web/WebViewActivity;->nl:J

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->kl:Ljava/lang/String;

    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->ll:Ljava/lang/String;

    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->ml:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/web/WebViewActivity;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "(function(){var n=window.__sbLastDlName||\'\';try{window.__sbLastDlName=\'\';}catch(e){}if(!n){try{var a=document.querySelectorAll(\'a[download]\');for(var i=0;i<a.length;i++){var d=a[i].getAttribute(\'download\');if(d){n=d;break;}}}catch(e){}}try{android.onDataDownName(n||\'\');}catch(e){try{android.onDataDownName(\'\');}catch(e2){}}})();"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
