.class Lcom/mycompany/app/web/WebViewActivity$234$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$234;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$234;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$234$1;->a:Lcom/mycompany/app/web/WebViewActivity$234;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "true"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$234$1;->a:Lcom/mycompany/app/web/WebViewActivity$234;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$234;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->M8:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method
