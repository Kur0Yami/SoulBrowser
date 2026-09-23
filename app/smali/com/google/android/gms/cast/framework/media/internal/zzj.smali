.class final Lcom/google/android/gms/cast/framework/media/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zza;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/internal/zzl;

.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/internal/zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzm;Lcom/google/android/gms/cast/framework/media/internal/zzl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzj;->a:Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 5
    .line 6
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzj;->b:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzj;->a:Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzl;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzj;->b:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 6
    .line 7
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->n:Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/internal/zzm;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
