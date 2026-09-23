.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;
    }
.end annotation


# instance fields
.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Landroidx/core/graphics/drawable/IconCompat;

.field public d:Z


# virtual methods
.method public final b(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/core/app/NotificationCompatBuilder;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 5
    .line 6
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 17
    .line 18
    const/16 v3, 0x1f

    .line 19
    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    if-lt v4, v3, :cond_0

    .line 25
    .line 26
    move-object v4, p1

    .line 27
    check-cast v4, Landroidx/core/app/NotificationCompatBuilder;

    .line 28
    .line 29
    iget-object v4, v4, Landroidx/core/app/NotificationCompatBuilder;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroidx/core/graphics/drawable/IconCompat;->g(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->e()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v4, 0x1

    .line 44
    if-ne v2, v4, :cond_5

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 47
    .line 48
    iget v5, v2, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 49
    .line 50
    const/4 v6, -0x1

    .line 51
    if-ne v5, v6, :cond_2

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 54
    .line 55
    instance-of v4, v2, Landroid/graphics/Bitmap;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    check-cast v2, Landroid/graphics/Bitmap;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v2, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-ne v5, v4, :cond_3

    .line 65
    .line 66
    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Landroid/graphics/Bitmap;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v6, 0x5

    .line 72
    if-ne v5, v6, :cond_4

    .line 73
    .line 74
    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Landroid/graphics/Bitmap;

    .line 77
    .line 78
    invoke-static {v2, v4}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "called getBitmap() on "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_5
    :goto_1
    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->d:Z

    .line 108
    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 112
    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    check-cast p1, Landroidx/core/app/NotificationCompatBuilder;

    .line 120
    .line 121
    iget-object p1, p1, Landroidx/core/app/NotificationCompatBuilder;->a:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->g(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v1, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .line 132
    if-lt p1, v3, :cond_8

    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    invoke-static {v1, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    .line 2
    .line 3
    return-object v0
.end method
