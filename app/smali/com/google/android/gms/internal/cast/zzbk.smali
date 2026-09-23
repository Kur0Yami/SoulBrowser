.class public final Lcom/google/android/gms/internal/cast/zzbk;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# instance fields
.field public final c:Z

.field public f:Landroid/app/Activity;

.field public g:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

.field public h:Landroid/view/View;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->f:Landroid/app/Activity;

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->f:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->c:Z

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->e:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->g:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->b:Landroid/view/View;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->h:Landroid/view/View;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->d:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->i:Ljava/lang/String;

    .line 23
    .line 24
    iget p1, p1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->c:I

    .line 25
    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzbk;->k:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->f:Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzbk;->c()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->f:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbk;->h:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzbk;->j:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v2, "accessibility"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_5

    .line 35
    .line 36
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzbk;->c:Z

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v4, "googlecast-introOverlayShown"

    .line 46
    .line 47
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzbk;->c()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_0
    new-instance v2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iget v4, p0, Lcom/google/android/gms/internal/cast/zzbk;->k:I

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->e(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sget v5, Lcom/google/android/gms/cast/framework/R$layout;->cast_help_text:I

    .line 78
    .line 79
    invoke-virtual {v4, v5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzbk;->i:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iput-object v4, v2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->q:Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;

    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->asView()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Lcom/google/android/gms/internal/cast/zzbj;

    .line 101
    .line 102
    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/gms/internal/cast/zzbj;-><init>(Lcom/google/android/gms/internal/cast/zzbk;Landroid/app/Activity;Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->a(Landroid/view/View;Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;)V

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzbk;->j:Z

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->b()V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->f:Landroid/app/Activity;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->g:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->h:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->i:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->k:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbk;->j:Z

    .line 17
    .line 18
    return-void
.end method
