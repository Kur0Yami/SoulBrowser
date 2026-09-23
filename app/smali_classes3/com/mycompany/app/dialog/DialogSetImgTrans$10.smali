.class Lcom/mycompany/app/dialog/DialogSetImgTrans$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetImgTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans$10;->c:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans$10;->c:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->n0:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/16 v3, 0xf

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 15
    .line 16
    const-string v4, "mOcrUseIcon"

    .line 17
    .line 18
    invoke-static {v3, p1, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    move p1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 25
    .line 26
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->o0:Z

    .line 27
    .line 28
    if-eq v1, v4, :cond_1

    .line 29
    .line 30
    sput-boolean v4, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 31
    .line 32
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 33
    .line 34
    const-string v1, "mOcrUsePack"

    .line 35
    .line 36
    invoke-static {v3, p1, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    move p1, v2

    .line 40
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 41
    .line 42
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->p0:Z

    .line 43
    .line 44
    if-eq v1, v4, :cond_2

    .line 45
    .line 46
    sput-boolean v4, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 47
    .line 48
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 49
    .line 50
    const-string v1, "mOcrUseLoad"

    .line 51
    .line 52
    invoke-static {v3, p1, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    move p1, v2

    .line 56
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 57
    .line 58
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->q0:Z

    .line 59
    .line 60
    if-eq v1, v4, :cond_3

    .line 61
    .line 62
    sput-boolean v4, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 63
    .line 64
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 65
    .line 66
    const-string v1, "mOcrUseTrns"

    .line 67
    .line 68
    invoke-static {v3, p1, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    move p1, v2

    .line 72
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 73
    .line 74
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->r0:Z

    .line 75
    .line 76
    if-eq v1, v4, :cond_4

    .line 77
    .line 78
    sput-boolean v4, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 79
    .line 80
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 81
    .line 82
    const-string v1, "mOcrUseBack"

    .line 83
    .line 84
    invoke-static {v3, p1, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    move p1, v2

    .line 88
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->s0:Z

    .line 89
    .line 90
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->s0:Z

    .line 91
    .line 92
    if-eq v1, v4, :cond_5

    .line 93
    .line 94
    sput-boolean v4, Lcom/mycompany/app/pref/PrefZone;->s0:Z

    .line 95
    .line 96
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 97
    .line 98
    const-string v1, "mOcrUseZoom"

    .line 99
    .line 100
    invoke-static {v3, p1, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    move v2, p1

    .line 105
    :goto_1
    if-eqz v2, :cond_6

    .line 106
    .line 107
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImgTrans;->dismiss()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
