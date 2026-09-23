.class Lcom/mycompany/app/setting/SettingSecure$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/setting/SettingSecure;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecure;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecure$12;->f:Lcom/mycompany/app/setting/SettingSecure;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingSecure$12;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/mycompany/app/setting/SettingSecure$12;->c:I

    .line 2
    .line 3
    sget v0, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSecure$12;->f:Lcom/mycompany/app/setting/SettingSecure;

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingSecure;->Q0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v2, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget p1, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 25
    .line 26
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetLock;->dismiss()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 35
    .line 36
    :cond_1
    return-void
.end method
