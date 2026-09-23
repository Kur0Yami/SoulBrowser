.class Lcom/mycompany/app/web/WebViewActivity$316;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$316;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$316;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->C4()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, v2}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v3, 0x2

    .line 25
    if-ne p1, v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->z2()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-ne p1, v3, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$316$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$316$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$316;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, p1, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    const/4 v3, 0x4

    .line 49
    if-ne p1, v3, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$316$2;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$316$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$316;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4, p1, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    const/4 v2, 0x5

    .line 65
    if-ne p1, v2, :cond_5

    .line 66
    .line 67
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$316$3;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$316$3;-><init>(Lcom/mycompany/app/web/WebViewActivity$316;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->L1(Ljava/lang/String;Lcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    const/4 v2, 0x6

    .line 81
    if-ne p1, v2, :cond_6

    .line 82
    .line 83
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->G1(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_6
    const/4 v2, 0x7

    .line 92
    if-ne p1, v2, :cond_a

    .line 93
    .line 94
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_8
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 107
    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetTmem;->dismiss()V

    .line 111
    .line 112
    .line 113
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 114
    .line 115
    :cond_9
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-direct {p1, v0, v1}, Lcom/mycompany/app/dialog/DialogSetTmem;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 125
    .line 126
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$575;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$575;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    .line 133
    .line 134
    :cond_a
    :goto_0
    return-void
.end method
