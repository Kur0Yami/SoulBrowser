.class Lcom/mycompany/app/setting/SettingLayout$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$21;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingLayout;->J2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$21;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->v2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->v2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$21;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->N1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 10
    .line 11
    if-ne v0, p2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iput p2, p1, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->U0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->W0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->X0()V

    .line 23
    .line 24
    .line 25
    iget p2, p1, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 26
    .line 27
    if-eqz p2, :cond_4

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingLayout;->K1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 30
    .line 31
    iget-boolean p2, p1, Lcom/mycompany/app/view/MyButtonRelative;->J:Z

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iput-boolean v1, p1, Lcom/mycompany/app/view/MyButtonRelative;->J:Z

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p1, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonRelative;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonRelative;->j()V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_0
    return v1
.end method
