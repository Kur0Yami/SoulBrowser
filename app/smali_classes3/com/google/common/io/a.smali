.class public final synthetic Lcom/google/common/io/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;
.implements Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/common/io/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/Object;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method


# virtual methods
.method public get()Ljava/nio/file/attribute/FileAttribute;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/io/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->c()V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->b()Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
