.class Lcom/mycompany/app/setting/SettingPassAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingPassAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassAdapter$2;->c:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassAdapter$2;->c:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingPassAdapter;->e:Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/mycompany/app/setting/SettingPassList$7;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingPassList$7;->a:Lcom/mycompany/app/setting/SettingPassList;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
