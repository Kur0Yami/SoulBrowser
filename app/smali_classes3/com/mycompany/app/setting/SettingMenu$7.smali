.class Lcom/mycompany/app/setting/SettingMenu$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$7;->a:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$7;->a:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
