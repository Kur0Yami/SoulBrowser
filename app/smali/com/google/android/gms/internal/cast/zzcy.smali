.class final Lcom/google/android/gms/internal/cast/zzcy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zza;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzda;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzda;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcy;->a:Lcom/google/android/gms/internal/cast/zzda;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcy;->a:Lcom/google/android/gms/internal/cast/zzda;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzda;->e:Landroid/view/View;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzda;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x4

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzda;->g:Lcom/google/android/gms/internal/cast/zzcz;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzcz;->a()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
