.class Lcom/mycompany/app/main/MainListView$63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$63;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$63;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->u:Landroid/view/View;

    .line 6
    .line 7
    if-nez v2, :cond_2

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->v:Landroid/view/View;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->w:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v2, Landroid/view/View;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView;->u:Landroid/view/View;

    .line 28
    .line 29
    new-instance v2, Landroid/view/View;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView;->v:Landroid/view/View;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->x0(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->j0()V

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .line 55
    sget v2, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 56
    .line 57
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const v2, 0x800033

    .line 61
    .line 62
    .line 63
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    .line 65
    sget v2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 66
    .line 67
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 68
    .line 69
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    sget v3, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 72
    .line 73
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    const v3, 0x800035

    .line 77
    .line 78
    .line 79
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    .line 81
    sget v3, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 82
    .line 83
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 84
    .line 85
    :try_start_0
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView;->w:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->u:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->w:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->v:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
