.class Lcom/mycompany/app/web/WebVideoPip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$1;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$1;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 16
    .line 17
    .line 18
    const/high16 v3, -0x1000000

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    invoke-virtual {v0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 25
    .line 26
    .line 27
    const/high16 v5, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    float-to-int v5, v5

    .line 34
    new-instance v6, Lcom/mycompany/app/view/MyCoverView;

    .line 35
    .line 36
    sget v7, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 37
    .line 38
    invoke-direct {v6, v1, v4, v5, v7}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 39
    .line 40
    .line 41
    const/high16 v1, -0x5f000000

    .line 42
    .line 43
    invoke-virtual {v6, v1}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-virtual {v6, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v6, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    iput-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 58
    .line 59
    iput-object v6, v0, Lcom/mycompany/app/web/WebVideoPip;->i:Lcom/mycompany/app/view/MyCoverView;

    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$2;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebVideoPip$2;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
