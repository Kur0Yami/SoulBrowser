.class final synthetic Lcom/google/android/gms/cast/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/zzbl;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbg;->c:Lcom/google/android/gms/cast/zzbl;

    iput p2, p0, Lcom/google/android/gms/cast/zzbg;->f:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbg;->c:Lcom/google/android/gms/cast/zzbl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbm;->t:Lcom/google/android/gms/cast/Cast$Listener;

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/gms/cast/zzbg;->f:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->b(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
