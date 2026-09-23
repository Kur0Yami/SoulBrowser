.class Lcom/mycompany/app/dialog/DialogMenuMain$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$15$1;->c:Lcom/mycompany/app/dialog/DialogMenuMain$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$15$1;->c:Lcom/mycompany/app/dialog/DialogMenuMain$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogMenuMain$15;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->z0:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogMenuMain;->C()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->C0:Lcom/google/android/material/tabs/TabLayout;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const v2, -0x4f4f50

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const v2, -0x595616

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->C0:Lcom/google/android/material/tabs/TabLayout;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 45
    .line 46
    new-instance v4, Lcom/mycompany/app/dialog/DialogMenuMain$19;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuMain$15$1$1;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogMenuMain$15$1$1;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain$15$1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method
