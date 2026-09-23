.class Lcom/mycompany/app/dialog/DialogSetPrivacy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetPrivacy;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$3;->a:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$3;->a:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 2
    .line 3
    iget-boolean p4, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eqz p2, :cond_a

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p2, v1, :cond_8

    .line 11
    .line 12
    if-eq p2, v0, :cond_6

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p2, v0, :cond_4

    .line 16
    .line 17
    if-eq p2, v2, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-eq p2, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    if-eqz p3, :cond_1

    .line 25
    .line 26
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 27
    .line 28
    or-int/lit8 p2, p2, 0x40

    .line 29
    .line 30
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 34
    .line 35
    and-int/lit8 p2, p2, -0x41

    .line 36
    .line 37
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 38
    .line 39
    :goto_0
    if-nez p4, :cond_c

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    if-eqz p3, :cond_3

    .line 46
    .line 47
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 48
    .line 49
    or-int/lit8 p2, p2, 0x20

    .line 50
    .line 51
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 55
    .line 56
    and-int/lit8 p2, p2, -0x21

    .line 57
    .line 58
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 59
    .line 60
    :goto_1
    if-nez p4, :cond_c

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    if-eqz p3, :cond_5

    .line 67
    .line 68
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 69
    .line 70
    or-int/lit8 p2, p2, 0x10

    .line 71
    .line 72
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 76
    .line 77
    and-int/lit8 p2, p2, -0x11

    .line 78
    .line 79
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 80
    .line 81
    :goto_2
    if-nez p4, :cond_c

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_6
    if-eqz p3, :cond_7

    .line 88
    .line 89
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 90
    .line 91
    or-int/lit8 p2, p2, 0x8

    .line 92
    .line 93
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 97
    .line 98
    and-int/lit8 p2, p2, -0x9

    .line 99
    .line 100
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 101
    .line 102
    :goto_3
    if-nez p4, :cond_c

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    if-eqz p3, :cond_9

    .line 109
    .line 110
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 111
    .line 112
    or-int/2addr p2, v2

    .line 113
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_9
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 117
    .line 118
    and-int/lit8 p2, p2, -0x5

    .line 119
    .line 120
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 121
    .line 122
    :goto_4
    if-nez p4, :cond_c

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_a
    if-eqz p3, :cond_b

    .line 129
    .line 130
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 131
    .line 132
    or-int/2addr p2, v0

    .line 133
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_b
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 137
    .line 138
    and-int/lit8 p2, p2, -0x3

    .line 139
    .line 140
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 141
    .line 142
    :goto_5
    if-nez p4, :cond_c

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 145
    .line 146
    .line 147
    :cond_c
    :goto_6
    return-void
.end method
