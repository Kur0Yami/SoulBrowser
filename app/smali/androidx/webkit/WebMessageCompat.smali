.class public Landroidx/webkit/WebMessageCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebMessageCompat$Type;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/webkit/WebMessageCompat;->b:I

    return-void
.end method

.method public constructor <init>([B[Landroidx/webkit/WebMessagePortCompat;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Landroidx/webkit/WebMessageCompat;->b:I

    return-void
.end method
