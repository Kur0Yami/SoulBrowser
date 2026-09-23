.class Lcom/mycompany/app/dialog/DialogMenuMain$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$15;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$15;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$16;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$16;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->y0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 14
    .line 15
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->y0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 28
    .line 29
    .line 30
    iget v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->k0:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-ltz v1, :cond_1

    .line 34
    .line 35
    iget v3, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->z0:I

    .line 36
    .line 37
    if-lt v1, v3, :cond_2

    .line 38
    .line 39
    :cond_1
    iput v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->k0:I

    .line 40
    .line 41
    :cond_2
    iget v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->k0:I

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    .line 47
    invoke-virtual {v3, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuMain$15$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogMenuMain$15$1;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain$15;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method
