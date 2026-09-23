.class Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTabMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerAdapter;->d:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final bridge synthetic n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerHolder;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerAdapter;->d:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 3
    .line 4
    if-ne p2, p1, :cond_1

    .line 5
    .line 6
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    :goto_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    :goto_1
    const/4 p2, -0x1

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 27
    .line 28
    invoke-direct {v1, p2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catch_0
    sget-object v1, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$17;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$17;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :goto_2
    sget-object v1, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :try_start_1
    new-instance v1, Landroid/view/View;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    .line 61
    .line 62
    :try_start_2
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 63
    .line 64
    invoke-direct {p1, p2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    .line 69
    .line 70
    :catch_1
    move-object p1, v1

    .line 71
    :catch_2
    :goto_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerHolder;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    return-object p2
.end method
