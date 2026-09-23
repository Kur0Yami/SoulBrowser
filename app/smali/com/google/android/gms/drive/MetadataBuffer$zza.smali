.class final Lcom/google/android/gms/drive/MetadataBuffer$zza;
.super Lcom/google/android/gms/drive/Metadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/data/DataHolder;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->a:Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->b:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->c:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final freeze()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/drive/metadata/internal/zzf;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 36
    .line 37
    sget-object v3, Lcom/google/android/gms/internal/drive/zzhs;->F:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 38
    .line 39
    if-eq v2, v3, :cond_0

    .line 40
    .line 41
    iget v3, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->b:I

    .line 42
    .line 43
    iget v4, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->c:I

    .line 44
    .line 45
    iget-object v5, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->a:Lcom/google/android/gms/common/data/DataHolder;

    .line 46
    .line 47
    invoke-interface {v2, v5, v0, v3, v4}, Lcom/google/android/gms/drive/metadata/MetadataField;->c(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/drive/zzaa;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/drive/zzaa;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method public final isDataValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->a:Lcom/google/android/gms/common/data/DataHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method
