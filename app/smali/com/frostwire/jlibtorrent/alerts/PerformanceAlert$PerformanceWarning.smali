.class public final enum Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceWarning"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->c:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 6
    .line 7
    const-string v1, "OUTSTANDING_DISK_BUFFER_LIMIT_REACHED"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 14
    .line 15
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->d:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 16
    .line 17
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 18
    .line 19
    const-string v3, "OUTSTANDING_REQUEST_LIMIT_REACHED"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 26
    .line 27
    sget-object v5, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->e:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 28
    .line 29
    iget v5, v5, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 30
    .line 31
    const-string v5, "UPLOAD_LIMIT_TOO_LOW"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 38
    .line 39
    sget-object v7, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->f:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 40
    .line 41
    iget v7, v7, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 42
    .line 43
    const-string v7, "DOWNLOAD_LIMIT_TOO_LOW"

    .line 44
    .line 45
    const/4 v8, 0x3

    .line 46
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 50
    .line 51
    sget-object v9, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->g:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 52
    .line 53
    iget v9, v9, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 54
    .line 55
    const-string v9, "SEND_BUFFER_WATERMARK_TOO_LOW"

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 62
    .line 63
    sget-object v11, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->h:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 64
    .line 65
    iget v11, v11, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 66
    .line 67
    const-string v11, "TOO_MANY_OPTIMISTIC_UNCHOKE_SLOTS"

    .line 68
    .line 69
    const/4 v12, 0x5

    .line 70
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v11, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 74
    .line 75
    sget-object v13, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->i:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 76
    .line 77
    iget v13, v13, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 78
    .line 79
    const-string v13, "TOO_HIGH_DISK_QUEUE_LIMIT"

    .line 80
    .line 81
    const/4 v14, 0x6

    .line 82
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 86
    .line 87
    sget-object v15, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->j:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 88
    .line 89
    iget v15, v15, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 90
    .line 91
    const-string v15, "TOO_FEW_OUTGOING_PORTS"

    .line 92
    .line 93
    move/from16 v16, v2

    .line 94
    .line 95
    const/4 v2, 0x7

    .line 96
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v15, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 100
    .line 101
    move/from16 v17, v2

    .line 102
    .line 103
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->k:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 104
    .line 105
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 106
    .line 107
    const-string v2, "TOO_FEW_FILE_DESCRIPTORS"

    .line 108
    .line 109
    move/from16 v18, v4

    .line 110
    .line 111
    const/16 v4, 0x8

    .line 112
    .line 113
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 117
    .line 118
    move/from16 v19, v4

    .line 119
    .line 120
    sget-object v4, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->l:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 121
    .line 122
    iget v4, v4, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    .line 123
    .line 124
    const-string v4, "NUM_WARNINGS"

    .line 125
    .line 126
    move/from16 v20, v6

    .line 127
    .line 128
    const/16 v6, 0x9

    .line 129
    .line 130
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 134
    .line 135
    move/from16 v21, v6

    .line 136
    .line 137
    const-string v6, "UNKNOWN"

    .line 138
    .line 139
    move/from16 v22, v8

    .line 140
    .line 141
    const/16 v8, 0xa

    .line 142
    .line 143
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const/16 v6, 0xb

    .line 147
    .line 148
    new-array v6, v6, [Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 149
    .line 150
    aput-object v0, v6, v16

    .line 151
    .line 152
    aput-object v1, v6, v18

    .line 153
    .line 154
    aput-object v3, v6, v20

    .line 155
    .line 156
    aput-object v5, v6, v22

    .line 157
    .line 158
    aput-object v7, v6, v10

    .line 159
    .line 160
    aput-object v9, v6, v12

    .line 161
    .line 162
    aput-object v11, v6, v14

    .line 163
    .line 164
    aput-object v13, v6, v17

    .line 165
    .line 166
    aput-object v15, v6, v19

    .line 167
    .line 168
    aput-object v2, v6, v21

    .line 169
    .line 170
    aput-object v4, v6, v8

    .line 171
    .line 172
    sput-object v6, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;->c:[Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 173
    .line 174
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;->c:[Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/alerts/PerformanceAlert$PerformanceWarning;

    .line 8
    .line 9
    return-object v0
.end method
