.class Lcom/mycompany/app/main/MainTransText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$1;->c:Lcom/mycompany/app/main/MainTransText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$1;->c:Lcom/mycompany/app/main/MainTransText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->d:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->a:Lcom/mycompany/app/main/MainActivity;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransText;->a:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/view/MyWebSafe;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 38
    .line 39
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget v1, v0, Lcom/mycompany/app/main/MainTransText;->f:I

    .line 53
    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v1, -0x2

    .line 58
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransText;->d:Landroid/view/ViewGroup;

    .line 59
    .line 60
    iget-object v3, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 61
    .line 62
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    const/4 v5, -0x1

    .line 65
    invoke-direct {v4, v5, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->d:Landroid/view/ViewGroup;

    .line 73
    .line 74
    new-instance v2, Lcom/mycompany/app/main/MainTransText$2;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTransText$2;-><init>(Lcom/mycompany/app/main/MainTransText;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_2
    return-void
.end method
