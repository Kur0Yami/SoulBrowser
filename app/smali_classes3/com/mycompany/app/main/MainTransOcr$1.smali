.class Lcom/mycompany/app/main/MainTransOcr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransOcr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransOcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr$1;->c:Lcom/mycompany/app/main/MainTransOcr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr$1;->c:Lcom/mycompany/app/main/MainTransOcr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->a:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransOcr;->a:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransOcr;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 39
    .line 40
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    const/4 v5, -0x2

    .line 44
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 52
    .line 53
    new-instance v2, Lcom/mycompany/app/main/MainTransOcr$4;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTransOcr$4;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method
