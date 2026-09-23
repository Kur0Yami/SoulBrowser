.class Lcom/mycompany/app/web/WebViewActivity$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$45;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$45;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$45$1;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$45$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$45;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
