.class Lcom/mycompany/app/dialog/DialogSetScrFil$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetScrFil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$12;->a:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->p0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$12;->a:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iput v3, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v1, v3

    .line 24
    :goto_0
    const/16 v4, 0x3c

    .line 25
    .line 26
    iput v4, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->m0:I

    .line 27
    .line 28
    sget-object v4, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 29
    .line 30
    const/4 v5, 0x7

    .line 31
    aget v4, v4, v5

    .line 32
    .line 33
    iput v4, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->n0:I

    .line 34
    .line 35
    sget-object v4, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 36
    .line 37
    aget v4, v4, v5

    .line 38
    .line 39
    iput v4, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->o0:F

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->D()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->F()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v2, v1

    .line 52
    :goto_1
    if-eqz v2, :cond_3

    .line 53
    .line 54
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 55
    .line 56
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 63
    .line 64
    sget-object v2, Lcom/mycompany/app/main/MainConst;->X:[I

    .line 65
    .line 66
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 67
    .line 68
    aget v2, v2, v4

    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 74
    .line 75
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 76
    .line 77
    sget v6, Lnet/kaki87/soul2/testing/R$string;->filter_color:I

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v5, 0x1

    .line 82
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->B()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-interface {v2, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogSetScrFil;->E(Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
