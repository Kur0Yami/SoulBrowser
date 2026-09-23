.class public final synthetic Lcom/google/common/io/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/common/io/b;->a:I

    iput-object p2, p0, Lcom/google/common/io/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/nio/file/attribute/FileAttribute;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/io/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/io/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/io/IOException;

    .line 9
    .line 10
    sget-object v0, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->b:Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;

    .line 11
    .line 12
    new-instance v0, Ljava/io/IOException;

    .line 13
    .line 14
    const-string v2, "Could not find user"

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :pswitch_0
    check-cast v1, Ljava/nio/file/attribute/FileAttribute;

    .line 21
    .line 22
    sget-object v0, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->b:Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;

    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
