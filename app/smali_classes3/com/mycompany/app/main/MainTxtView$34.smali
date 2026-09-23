.class Lcom/mycompany/app/main/MainTxtView$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$34;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$34;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtView;->J0()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$34;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget p2, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->M0()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    :goto_0
    return v0

    .line 18
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 27
    .line 28
    :cond_2
    iget p2, p1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 29
    .line 30
    if-ne p2, v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainTxtView;->O0(Z)V

    .line 33
    .line 34
    .line 35
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTts;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogSetTts;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/main/MainTxtView$42;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/MainTxtView$42;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    return v0

    .line 51
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 54
    .line 55
    const-class v2, Lcom/mycompany/app/setting/SettingFont;

    .line 56
    .line 57
    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "EXTRA_PAGE"

    .line 61
    .line 62
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x7

    .line 66
    invoke-virtual {p1, p2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 67
    .line 68
    .line 69
    return v0
.end method
