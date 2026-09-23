.class Lcom/mycompany/app/setting/SettingLayout$23;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$23;->a:Lcom/mycompany/app/setting/SettingLayout;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$23;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->x2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->x2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$23;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p2, 0x0

    .line 14
    :goto_0
    xor-int/lit8 v0, p2, 0x1

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/mycompany/app/setting/SettingLayout;->E0(Lcom/mycompany/app/setting/SettingLayout;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :goto_1
    return v1

    .line 23
    :cond_2
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 26
    .line 27
    invoke-virtual {p2, v1, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->C(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 33
    .line 34
    invoke-virtual {p2, v1, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->C(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    :goto_2
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingLayout;->a2:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->U0()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/setting/SettingLayout;->a1(IZ)V

    .line 49
    .line 50
    .line 51
    return v1
.end method
