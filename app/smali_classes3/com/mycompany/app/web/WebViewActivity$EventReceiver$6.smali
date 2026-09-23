.class Lcom/mycompany/app/web/WebViewActivity$EventReceiver$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$6;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$6;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->D9:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->h6(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
