.class final Lcom/google/android/gms/internal/auth-api/zbbh;
.super Lcom/google/android/gms/internal/auth-api/zbbi;
.source "SourceFile"


# instance fields
.field public final transient g:I

.field public final transient h:I

.field public final synthetic i:Lcom/google/android/gms/internal/auth-api/zbbi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth-api/zbbi;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->i:Lcom/google/android/gms/internal/auth-api/zbbi;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->g:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->h:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->i:Lcom/google/android/gms/internal/auth-api/zbbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth-api/zbbf;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->i:Lcom/google/android/gms/internal/auth-api/zbbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth-api/zbbf;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->h:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/auth-api/zbbc;->a(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->i:Lcom/google/android/gms/internal/auth-api/zbbi;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->i:Lcom/google/android/gms/internal/auth-api/zbbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth-api/zbbf;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final q(II)Lcom/google/android/gms/internal/auth-api/zbbi;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->h:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/auth-api/zbbc;->b(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    add-int/2addr p2, v0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->i:Lcom/google/android/gms/internal/auth-api/zbbi;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/auth-api/zbbi;->q(II)Lcom/google/android/gms/internal/auth-api/zbbi;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/auth-api/zbbh;->h:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth-api/zbbh;->q(II)Lcom/google/android/gms/internal/auth-api/zbbi;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
