.class Lcom/mycompany/app/dialog/DialogSetVpn$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogSetVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$7;->b:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn$7;->a:Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetVpn;->p0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$7;->b:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$7;->a:Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetVpn$7;->b:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-static {v3, p1, v0, v2}, Lcom/mycompany/app/dialog/DialogSetVpn;->B(Lcom/mycompany/app/dialog/DialogSetVpn;Landroid/view/View;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    invoke-static {v3, p1, v0, v1}, Lcom/mycompany/app/dialog/DialogSetVpn;->B(Lcom/mycompany/app/dialog/DialogSetVpn;Landroid/view/View;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object p1, v3, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, v3, Lcom/mycompany/app/dialog/DialogSetVpn;->l0:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object p2, v3, Lcom/mycompany/app/dialog/DialogSetVpn;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 30
    .line 31
    if-eqz p2, :cond_4

    .line 32
    .line 33
    :goto_0
    return v2

    .line 34
    :cond_4
    if-eqz p1, :cond_5

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditVpn;->dismiss()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, v3, Lcom/mycompany/app/dialog/DialogSetVpn;->l0:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 41
    .line 42
    :cond_5
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 43
    .line 44
    iget-object p2, v3, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 45
    .line 46
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetVpn$9;

    .line 47
    .line 48
    invoke-direct {v0, v3}, Lcom/mycompany/app/dialog/DialogSetVpn$9;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2, v0}, Lcom/mycompany/app/dialog/DialogEditVpn;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, v3, Lcom/mycompany/app/dialog/DialogSetVpn;->l0:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 55
    .line 56
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetVpn$10;

    .line 57
    .line 58
    invoke-direct {p2, v3}, Lcom/mycompany/app/dialog/DialogSetVpn$10;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    .line 63
    .line 64
    return v2
.end method
