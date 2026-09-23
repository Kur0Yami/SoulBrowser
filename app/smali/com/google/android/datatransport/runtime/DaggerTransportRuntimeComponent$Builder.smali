.class final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# virtual methods
.method public final a()Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->a:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iput-object v3, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->c:Ljavax/inject/Provider;

    .line 19
    .line 20
    new-instance v3, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 21
    .line 22
    invoke-direct {v3, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->f:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v5, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    .line 36
    .line 37
    invoke-direct {v5, v3, v1, v4}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;-><init>(Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->f:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 41
    .line 42
    new-instance v3, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory;

    .line 43
    .line 44
    invoke-direct {v3, v1, v5}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory;-><init>(Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->g:Ljavax/inject/Provider;

    .line 52
    .line 53
    iget-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->f:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 54
    .line 55
    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 56
    .line 57
    invoke-direct {v3, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 58
    .line 59
    .line 60
    iput-object v3, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->h:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 61
    .line 62
    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_PackageNameFactory;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_PackageNameFactory;-><init>(Ljavax/inject/Provider;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->i:Ljavax/inject/Provider;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v4, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->h:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 82
    .line 83
    iget-object v5, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->i:Ljavax/inject/Provider;

    .line 84
    .line 85
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    .line 86
    .line 87
    invoke-direct {v6, v1, v3, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v6}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 95
    .line 96
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v3, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->f:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 102
    .line 103
    iget-object v4, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    new-instance v9, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 110
    .line 111
    invoke-direct {v9, v3, v4, v1, v5}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;)V

    .line 112
    .line 113
    .line 114
    iput-object v9, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 115
    .line 116
    iget-object v7, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->c:Ljavax/inject/Provider;

    .line 117
    .line 118
    iget-object v8, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->g:Ljavax/inject/Provider;

    .line 119
    .line 120
    iget-object v10, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 121
    .line 122
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 123
    .line 124
    move-object v11, v10

    .line 125
    invoke-direct/range {v6 .. v11}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 126
    .line 127
    .line 128
    iput-object v6, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->l:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 129
    .line 130
    move-object v11, v7

    .line 131
    iget-object v7, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->f:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    iget-object v15, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 142
    .line 143
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 144
    .line 145
    move-object v12, v10

    .line 146
    move-object/from16 v16, v10

    .line 147
    .line 148
    move-object v10, v9

    .line 149
    move-object/from16 v9, v16

    .line 150
    .line 151
    invoke-direct/range {v6 .. v15}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;)V

    .line 152
    .line 153
    .line 154
    iput-object v6, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->m:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 155
    .line 156
    iget-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->c:Ljavax/inject/Provider;

    .line 157
    .line 158
    iget-object v3, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 159
    .line 160
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 161
    .line 162
    invoke-direct {v4, v1, v15, v3, v15}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 163
    .line 164
    .line 165
    iput-object v4, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->n:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 166
    .line 167
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    iget-object v8, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->l:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 176
    .line 177
    iget-object v9, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->m:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 178
    .line 179
    iget-object v10, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->n:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 180
    .line 181
    new-instance v5, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    .line 182
    .line 183
    invoke-direct/range {v5 .. v10}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v5}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iput-object v1, v2, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->o:Ljavax/inject/Provider;

    .line 191
    .line 192
    return-object v2

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-class v3, Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v3, " must be set"

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1
.end method
