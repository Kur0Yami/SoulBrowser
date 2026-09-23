.class Lcom/mycompany/app/dialog/DialogSetPms$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetPms;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPms;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$3;->a:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$3;->a:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 2
    .line 3
    const/4 p4, 0x2

    .line 4
    if-eqz p2, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_4

    .line 8
    .line 9
    if-eq p2, p4, :cond_2

    .line 10
    .line 11
    const/4 p4, 0x3

    .line 12
    if-eq p2, p4, :cond_0

    .line 13
    .line 14
    sget p2, Lcom/mycompany/app/dialog/DialogSetPms;->m0:I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 23
    .line 24
    or-int/lit8 p2, p2, 0x8

    .line 25
    .line 26
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 27
    .line 28
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 29
    .line 30
    and-int/lit8 p2, p2, -0x9

    .line 31
    .line 32
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 36
    .line 37
    and-int/lit8 p2, p2, -0x9

    .line 38
    .line 39
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 40
    .line 41
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 42
    .line 43
    or-int/lit8 p2, p2, 0x8

    .line 44
    .line 45
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    if-eqz p3, :cond_3

    .line 49
    .line 50
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 51
    .line 52
    or-int/lit8 p2, p2, 0x10

    .line 53
    .line 54
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 55
    .line 56
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 57
    .line 58
    and-int/lit8 p2, p2, -0x11

    .line 59
    .line 60
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 64
    .line 65
    and-int/lit8 p2, p2, -0x11

    .line 66
    .line 67
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 68
    .line 69
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 70
    .line 71
    or-int/lit8 p2, p2, 0x10

    .line 72
    .line 73
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    if-eqz p3, :cond_5

    .line 77
    .line 78
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 79
    .line 80
    or-int/lit8 p2, p2, 0x4

    .line 81
    .line 82
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 83
    .line 84
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 85
    .line 86
    and-int/lit8 p2, p2, -0x5

    .line 87
    .line 88
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 92
    .line 93
    and-int/lit8 p2, p2, -0x5

    .line 94
    .line 95
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 96
    .line 97
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 98
    .line 99
    or-int/lit8 p2, p2, 0x4

    .line 100
    .line 101
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    if-eqz p3, :cond_7

    .line 105
    .line 106
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 107
    .line 108
    or-int/2addr p2, p4

    .line 109
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 110
    .line 111
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 112
    .line 113
    and-int/lit8 p2, p2, -0x3

    .line 114
    .line 115
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 119
    .line 120
    and-int/lit8 p2, p2, -0x3

    .line 121
    .line 122
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 123
    .line 124
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 125
    .line 126
    or-int/2addr p2, p4

    .line 127
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 128
    .line 129
    return-void
.end method
