.class public Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api30Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api33Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api26Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api34Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api24Impl;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityWindowInfo;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    :goto_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_2
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AccessibilityWindowInfo[id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", type="

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v3, v4, :cond_3

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-eq v3, v5, :cond_2

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    if-eq v3, v5, :cond_1

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    if-eq v3, v5, :cond_0

    .line 45
    .line 46
    const-string v3, "<UNKNOWN>"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v3, "TYPE_ACCESSIBILITY_OVERLAY"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v3, "TYPE_SYSTEM"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v3, "TYPE_INPUT_METHOD"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string v3, "TYPE_APPLICATION"

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, ", layer="

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, ", bounds="

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", focused="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", active="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", hasParent="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    new-instance v3, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    .line 119
    .line 120
    invoke-direct {v3, v1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    const/4 v3, 0x0

    .line 125
    :goto_1
    const/4 v1, 0x0

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    move v3, v4

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move v3, v1

    .line 131
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, ", hasChildren="

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-lez v3, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move v4, v1

    .line 147
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", transitionTime="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 156
    .line 157
    const/16 v3, 0x22

    .line 158
    .line 159
    if-lt v1, v3, :cond_7

    .line 160
    .line 161
    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api34Impl;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v4

    .line 165
    goto :goto_4

    .line 166
    :cond_7
    const-wide/16 v4, 0x0

    .line 167
    .line 168
    :goto_4
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v4, ", locales="

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    if-lt v1, v3, :cond_8

    .line 177
    .line 178
    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api34Impl;->a(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/os/LocaleList;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->g(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    sget-object v1, Landroidx/core/os/LocaleListCompat;->b:Landroidx/core/os/LocaleListCompat;

    .line 188
    .line 189
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const/16 v1, 0x5d

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    return-object v0
.end method
