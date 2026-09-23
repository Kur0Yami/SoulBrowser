.class Lcom/mycompany/app/web/WebViewActivity$364$1;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mycompany/app/view/MyGlideTarget<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity$364;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$364;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$364$1;->f:Lcom/mycompany/app/web/WebViewActivity$364;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$364$1;->f:Lcom/mycompany/app/web/WebViewActivity$364;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/mycompany/app/web/WebViewActivity$364;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/mycompany/app/web/WebViewActivity;->Vk:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p2, Lcom/mycompany/app/web/WebViewActivity;->Wk:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, p2, Lcom/mycompany/app/web/WebViewActivity;->Vk:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, p2, Lcom/mycompany/app/web/WebViewActivity;->Wk:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v1, p2, Lcom/mycompany/app/web/WebViewActivity;->Xk:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->Yk:Ljava/io/File;

    .line 24
    .line 25
    iput-object v2, p2, Lcom/mycompany/app/web/WebViewActivity;->Zk:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$365;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/mycompany/app/web/WebViewActivity$365;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/web/WebNestView;->e(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$364$1;->f:Lcom/mycompany/app/web/WebViewActivity$364;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$364;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Vk:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p1, Lcom/mycompany/app/web/WebViewActivity;->Vk:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p1, Lcom/mycompany/app/web/WebViewActivity;->Wk:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebNestView;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$364$1$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$364$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$364$1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
