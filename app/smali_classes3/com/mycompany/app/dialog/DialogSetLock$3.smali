.class Lcom/mycompany/app/dialog/DialogSetLock$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetLock$3;->a:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetLock$3;->a:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 2
    .line 3
    const/4 p4, 0x2

    .line 4
    if-eqz p2, :cond_a

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq p2, v0, :cond_8

    .line 9
    .line 10
    if-eq p2, p4, :cond_6

    .line 11
    .line 12
    const/4 p4, 0x3

    .line 13
    if-eq p2, p4, :cond_4

    .line 14
    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/4 p4, 0x5

    .line 18
    if-eq p2, p4, :cond_0

    .line 19
    .line 20
    sget p2, Lcom/mycompany/app/dialog/DialogSetLock;->g0:I

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-eqz p3, :cond_1

    .line 27
    .line 28
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 29
    .line 30
    or-int/lit8 p2, p2, 0x40

    .line 31
    .line 32
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 36
    .line 37
    and-int/lit8 p2, p2, -0x41

    .line 38
    .line 39
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    if-eqz p3, :cond_3

    .line 43
    .line 44
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 45
    .line 46
    or-int/lit8 p2, p2, 0x20

    .line 47
    .line 48
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 52
    .line 53
    and-int/lit8 p2, p2, -0x21

    .line 54
    .line 55
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    if-eqz p3, :cond_5

    .line 59
    .line 60
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 61
    .line 62
    or-int/lit8 p2, p2, 0x10

    .line 63
    .line 64
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 68
    .line 69
    and-int/lit8 p2, p2, -0x11

    .line 70
    .line 71
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_6
    if-eqz p3, :cond_7

    .line 75
    .line 76
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 77
    .line 78
    or-int/lit8 p2, p2, 0x8

    .line 79
    .line 80
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 81
    .line 82
    return-void

    .line 83
    :cond_7
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 84
    .line 85
    and-int/lit8 p2, p2, -0x9

    .line 86
    .line 87
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_8
    if-eqz p3, :cond_9

    .line 91
    .line 92
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 93
    .line 94
    or-int/2addr p2, v1

    .line 95
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 96
    .line 97
    return-void

    .line 98
    :cond_9
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 99
    .line 100
    and-int/lit8 p2, p2, -0x5

    .line 101
    .line 102
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 103
    .line 104
    return-void

    .line 105
    :cond_a
    if-eqz p3, :cond_b

    .line 106
    .line 107
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 108
    .line 109
    or-int/2addr p2, p4

    .line 110
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 111
    .line 112
    return-void

    .line 113
    :cond_b
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 114
    .line 115
    and-int/lit8 p2, p2, -0x3

    .line 116
    .line 117
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 118
    .line 119
    return-void
.end method
