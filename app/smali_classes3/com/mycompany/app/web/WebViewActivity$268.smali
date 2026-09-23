.class Lcom/mycompany/app/web/WebViewActivity$268;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$268;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$268;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Wi:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xi:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Wi:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->C(I)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->f:Lcom/mycompany/app/view/MyManagerLinear;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->F(Landroid/view/View;)Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    invoke-virtual {v0, v5}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_5
    invoke-static {v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_6

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->p:Z

    .line 66
    .line 67
    if-eqz v3, :cond_7

    .line 68
    .line 69
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->q:Z

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_7
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 73
    .line 74
    :goto_0
    iget v4, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 75
    .line 76
    if-ne v5, v4, :cond_8

    .line 77
    .line 78
    if-nez v3, :cond_8

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    :goto_1
    move v6, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_8
    const/4 v3, 0x0

    .line 84
    goto :goto_1

    .line 85
    :goto_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v3, v2}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object v3, v1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->v:Lcom/mycompany/app/view/MyTextImage;

    .line 92
    .line 93
    move-object v1, v0

    .line 94
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->K(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyTextImage;Ljava/lang/String;IZLandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    :catch_0
    :cond_9
    :goto_3
    return-void
.end method
