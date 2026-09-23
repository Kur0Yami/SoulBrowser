.class public Lorg/apache/commons/lang3/ArchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/ArchUtils;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 9
    .line 10
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->f:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 11
    .line 12
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->g:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 15
    .line 16
    .line 17
    const-string v7, "i686"

    .line 18
    .line 19
    const-string v8, "pentium"

    .line 20
    .line 21
    const-string v3, "x86"

    .line 22
    .line 23
    const-string v4, "i386"

    .line 24
    .line 25
    const-string v5, "i486"

    .line 26
    .line 27
    const-string v6, "i586"

    .line 28
    .line 29
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v0, v3}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 37
    .line 38
    sget-object v3, Lorg/apache/commons/lang3/arch/Processor$Arch;->g:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 39
    .line 40
    invoke-direct {v0, v3, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "em64t"

    .line 44
    .line 45
    const-string v4, "universal"

    .line 46
    .line 47
    const-string v5, "x86_64"

    .line 48
    .line 49
    const-string v6, "amd64"

    .line 50
    .line 51
    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 59
    .line 60
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->h:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 63
    .line 64
    .line 65
    const-string v4, "ia64_32"

    .line 66
    .line 67
    const-string v5, "ia64n"

    .line 68
    .line 69
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v0, v4}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 77
    .line 78
    invoke-direct {v0, v3, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 79
    .line 80
    .line 81
    const-string v2, "ia64"

    .line 82
    .line 83
    const-string v4, "ia64w"

    .line 84
    .line 85
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 93
    .line 94
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->i:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 95
    .line 96
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "power_pc"

    .line 100
    .line 101
    const-string v5, "power_rs"

    .line 102
    .line 103
    const-string v6, "ppc"

    .line 104
    .line 105
    const-string v7, "power"

    .line 106
    .line 107
    const-string v8, "powerpc"

    .line 108
    .line 109
    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v0, v4}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 117
    .line 118
    invoke-direct {v0, v3, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "power_pc64"

    .line 122
    .line 123
    const-string v4, "power_rs64"

    .line 124
    .line 125
    const-string v5, "ppc64"

    .line 126
    .line 127
    const-string v6, "power64"

    .line 128
    .line 129
    const-string v7, "powerpc64"

    .line 130
    .line 131
    filled-new-array {v5, v6, v7, v2, v4}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 139
    .line 140
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->f:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 141
    .line 142
    invoke-direct {v0, v3, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 143
    .line 144
    .line 145
    const-string v2, "aarch64"

    .line 146
    .line 147
    filled-new-array {v2}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 155
    .line 156
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->j:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 157
    .line 158
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 159
    .line 160
    .line 161
    const-string v1, "riscv32"

    .line 162
    .line 163
    filled-new-array {v1}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 171
    .line 172
    invoke-direct {v0, v3, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 173
    .line 174
    .line 175
    const-string v1, "riscv64"

    .line 176
    .line 177
    filled-new-array {v1}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public static varargs a(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lorg/apache/commons/lang3/d;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/d;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
