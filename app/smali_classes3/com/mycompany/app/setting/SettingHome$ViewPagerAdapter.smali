.class Lcom/mycompany/app/setting/SettingHome$ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/setting/SettingHome$ViewPagerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$ViewPagerAdapter;->d:Lcom/mycompany/app/setting/SettingHome;

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
    check-cast p1, Lcom/mycompany/app/setting/SettingHome$ViewPagerHolder;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome$ViewPagerAdapter;->d:Lcom/mycompany/app/setting/SettingHome;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingHome;->i2:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingHome;->r2:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    :goto_0
    const/4 v0, -0x1

    .line 11
    :try_start_0
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 15
    .line 16
    invoke-direct {v1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    :goto_1
    sget v1, Lcom/mycompany/app/setting/SettingHome;->E2:I

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :try_start_1
    new-instance v1, Landroid/view/View;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 36
    .line 37
    .line 38
    :try_start_2
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 39
    .line 40
    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    .line 45
    .line 46
    :catch_1
    move-object p2, v1

    .line 47
    :catch_2
    :goto_2
    new-instance p1, Lcom/mycompany/app/setting/SettingHome$ViewPagerHolder;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method
