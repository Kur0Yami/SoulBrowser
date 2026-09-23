.class Lcom/mycompany/app/setting/SettingListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter$3;->c:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter$3;->c:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    xor-int/2addr v3, v4

    .line 30
    iput-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget v2, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 40
    .line 41
    iget-boolean v0, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-interface {v1, p1, v2, v0, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method
