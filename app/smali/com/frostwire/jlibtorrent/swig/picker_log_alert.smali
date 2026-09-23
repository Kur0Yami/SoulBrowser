.class public Lcom/frostwire/jlibtorrent/swig/picker_log_alert;
.super Lcom/frostwire/jlibtorrent/swig/peer_alert;
.source "SourceFile"


# static fields
.field public static final D:I

.field public static final E:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final F:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final G:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final H:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final I:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final J:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final K:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final L:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final M:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final N:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final O:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final P:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final Q:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final R:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final S:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final T:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final U:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

.field public static final V:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;


# instance fields
.field public transient C:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_priority_get()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_alert_type_get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->D:I

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 11
    .line 12
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_static_category_get()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->E:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 21
    .line 22
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 23
    .line 24
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_partial_ratio_get()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->F:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 32
    .line 33
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 34
    .line 35
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_prioritize_partials_get()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->G:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 43
    .line 44
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 45
    .line 46
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_rarest_first_partials_get()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->H:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 54
    .line 55
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 56
    .line 57
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_rarest_first_get()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->I:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 65
    .line 66
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 67
    .line 68
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_reverse_rarest_first_get()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->J:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 76
    .line 77
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 78
    .line 79
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_suggested_pieces_get()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->K:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 87
    .line 88
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 89
    .line 90
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_prio_sequential_pieces_get()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->L:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 98
    .line 99
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 100
    .line 101
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_sequential_pieces_get()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->M:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 109
    .line 110
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 111
    .line 112
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_reverse_pieces_get()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->N:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 120
    .line 121
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 122
    .line 123
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_time_critical_get()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->O:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 131
    .line 132
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 133
    .line 134
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_random_pieces_get()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->P:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 142
    .line 143
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 144
    .line 145
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_prefer_contiguous_get()J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->Q:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 153
    .line 154
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 155
    .line 156
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_reverse_sequential_get()J

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 161
    .line 162
    .line 163
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->R:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 164
    .line 165
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 166
    .line 167
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_backup1_get()J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 172
    .line 173
    .line 174
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->S:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 175
    .line 176
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 177
    .line 178
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_backup2_get()J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 183
    .line 184
    .line 185
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->T:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 186
    .line 187
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 188
    .line 189
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_end_game_get()J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 194
    .line 195
    .line 196
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->U:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 197
    .line 198
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 199
    .line 200
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_extent_affinity_get()J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/picker_flags_t;-><init>(J)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->V:Lcom/frostwire/jlibtorrent/swig/picker_flags_t;

    .line 208
    .line 209
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->C:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_1

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_picker_log_alert(J)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->C:J

    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lcom/frostwire/jlibtorrent/swig/peer_alert;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_message(JLcom/frostwire/jlibtorrent/swig/picker_log_alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_type(JLcom/frostwire/jlibtorrent/swig/picker_log_alert;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->picker_log_alert_what(JLcom/frostwire/jlibtorrent/swig/picker_log_alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
