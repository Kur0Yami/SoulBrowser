.class Lcom/mycompany/app/dialog/DialogSetTts$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$9;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetTts;->u0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts$9;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$9;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 11
    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetTts;->r0:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    sub-int/2addr p2, v1

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge p2, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->r0:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Ljava/util/Locale;

    .line 32
    .line 33
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p2, v0

    .line 47
    :goto_0
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 69
    .line 70
    invoke-virtual {v0, v2, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move p2, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 76
    .line 77
    sget v0, Lnet/kaki87/soul2/testing/R$string;->auto_detect:I

    .line 78
    .line 79
    invoke-virtual {p2, v2, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 80
    .line 81
    .line 82
    sget p2, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 83
    .line 84
    :goto_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 85
    .line 86
    invoke-virtual {v0, v2, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 87
    .line 88
    .line 89
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTts$9$1;

    .line 90
    .line 91
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetTts$9$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTts$9;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_2
    return v1
.end method
