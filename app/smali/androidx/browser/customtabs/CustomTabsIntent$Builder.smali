.class public final Landroidx/browser/customtabs/CustomTabsIntent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

.field public c:Landroid/app/ActivityOptions;

.field public d:I

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a:Landroid/content/Intent;

    .line 3
    new-instance v0, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->d:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->e:Z

    return-void
.end method

.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a:Landroid/content/Intent;

    .line 10
    new-instance v1, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->d:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->e:Z

    if-eqz p1, :cond_0

    .line 15
    iget-object v1, p1, Landroidx/browser/customtabs/CustomTabsSession;->d:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsSession;->c:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 18
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-string v2, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroidx/browser/customtabs/CustomTabsIntent;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 24
    .line 25
    iget-boolean v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->e:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string v1, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 44
    .line 45
    iget v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->d:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v2, 0x18

    .line 53
    .line 54
    if-lt v1, v2, :cond_2

    .line 55
    .line 56
    invoke-static {}, Landroidx/browser/customtabs/CustomTabsIntent$Api24Impl;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    const-string v4, "com.android.browser.headers"

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_0
    const-string v6, "Accept-Language"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-nez v7, :cond_2

    .line 91
    .line 92
    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    :cond_2
    const/16 v2, 0x22

    .line 99
    .line 100
    if-lt v1, v2, :cond_4

    .line 101
    .line 102
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 103
    .line 104
    if-nez v2, :cond_3

    .line 105
    .line 106
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iput-object v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 111
    .line 112
    :cond_3
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 113
    .line 114
    invoke-static {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Api34Impl;->a(Landroid/app/ActivityOptions;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    const/16 v2, 0x24

    .line 118
    .line 119
    if-lt v1, v2, :cond_6

    .line 120
    .line 121
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 130
    .line 131
    :cond_5
    const-string v1, "androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION"

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    xor-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 141
    .line 142
    invoke-static {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Api36Impl;->a(Landroid/app/ActivityOptions;Z)V

    .line 143
    .line 144
    .line 145
    :cond_6
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    :cond_7
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent;

    .line 154
    .line 155
    invoke-direct {v1, v0, v3}, Landroidx/browser/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    return-object v1
.end method
