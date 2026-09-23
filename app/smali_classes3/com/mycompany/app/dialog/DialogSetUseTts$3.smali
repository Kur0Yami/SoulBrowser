.class Lcom/mycompany/app/dialog/DialogSetUseTts$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetUseTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts$3;->a:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->j0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts$3;->a:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 4
    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    if-eq p2, p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->h0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    if-eqz p2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->h0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 28
    .line 29
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTts;

    .line 30
    .line 31
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 32
    .line 33
    invoke-direct {p2, p3}, Lcom/mycompany/app/dialog/DialogSetTts;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->h0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 37
    .line 38
    new-instance p3, Lcom/mycompany/app/dialog/DialogSetUseTts$6;

    .line 39
    .line 40
    invoke-direct {p3, p1}, Lcom/mycompany/app/dialog/DialogSetUseTts$6;-><init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    sput-boolean p3, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 48
    .line 49
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetUseTts;->b0:Landroid/content/Context;

    .line 50
    .line 51
    const/16 p2, 0xc

    .line 52
    .line 53
    const-string p4, "mTtsMode"

    .line 54
    .line 55
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
