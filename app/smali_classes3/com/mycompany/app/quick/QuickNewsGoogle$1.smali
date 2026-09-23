.class Lcom/mycompany/app/quick/QuickNewsGoogle$1;
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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$1;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$1;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->j:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->k:Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

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
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->j:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->k:Landroid/view/ViewGroup;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 39
    .line 40
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v2, Lcom/mycompany/app/quick/QuickNewsGoogle$2;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickNewsGoogle$2;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method
