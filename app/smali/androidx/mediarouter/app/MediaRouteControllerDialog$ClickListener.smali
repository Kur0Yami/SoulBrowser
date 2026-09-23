.class final Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClickListener"
.end annotation


# instance fields
.field public final synthetic c:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->c:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->c:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->s0:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v3, 0x1

    .line 12
    const v4, 0x1020019

    .line 13
    .line 14
    .line 15
    if-eq p1, v4, :cond_7

    .line 16
    .line 17
    const v5, 0x102001a

    .line 18
    .line 19
    .line 20
    if-ne p1, v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    sget v4, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    .line 25
    .line 26
    if-ne p1, v4, :cond_5

    .line 27
    .line 28
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 29
    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 33
    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v4, 0x3

    .line 41
    const/4 v5, 0x0

    .line 42
    if-ne p1, v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v3, v5

    .line 46
    :goto_0
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    const-wide/16 v10, 0x202

    .line 57
    .line 58
    and-long/2addr v8, v10

    .line 59
    cmp-long p1, v8, v6

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 70
    .line 71
    .line 72
    sget v5, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-eqz v3, :cond_3

    .line 76
    .line 77
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    const-wide/16 v10, 0x1

    .line 84
    .line 85
    and-long/2addr v8, v10

    .line 86
    cmp-long p1, v8, v6

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 97
    .line 98
    .line 99
    sget v5, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    if-nez v3, :cond_4

    .line 103
    .line 104
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    const-wide/16 v8, 0x204

    .line 111
    .line 112
    and-long/2addr v3, v8

    .line 113
    cmp-long p1, v3, v6

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    iget-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 124
    .line 125
    .line 126
    sget v5, Landroidx/mediarouter/R$string;->mr_controller_play:I

    .line 127
    .line 128
    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    if-eqz v5, :cond_6

    .line 137
    .line 138
    const/16 p1, 0x4000

    .line 139
    .line 140
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    const-class v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_5
    sget v1, Landroidx/mediarouter/R$id;->mr_close:I

    .line 176
    .line 177
    if-ne p1, v1, :cond_6

    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 180
    .line 181
    .line 182
    :cond_6
    return-void

    .line 183
    :cond_7
    :goto_2
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_9

    .line 190
    .line 191
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k:Landroidx/mediarouter/media/MediaRouter;

    .line 192
    .line 193
    if-ne p1, v4, :cond_8

    .line 194
    .line 195
    const/4 v3, 0x2

    .line 196
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v3}, Landroidx/mediarouter/media/MediaRouter;->v(I)V

    .line 200
    .line 201
    .line 202
    :cond_9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 203
    .line 204
    .line 205
    return-void
.end method
