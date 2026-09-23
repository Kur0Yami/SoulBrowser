.class Lcom/google/api/client/json/gson/GsonFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/gson/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final a:Lcom/google/api/client/json/gson/GsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/client/json/gson/GsonFactory$InstanceHolder;->a:Lcom/google/api/client/json/gson/GsonFactory;

    .line 7
    .line 8
    return-void
.end method
