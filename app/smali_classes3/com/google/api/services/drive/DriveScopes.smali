.class public Lcom/google/api/services/drive/DriveScopes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRIVE:Ljava/lang/String; = "https://www.googleapis.com/auth/drive"

.field public static final DRIVE_APPDATA:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.appdata"

.field public static final DRIVE_FILE:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.file"

.field public static final DRIVE_METADATA:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.metadata"

.field public static final DRIVE_METADATA_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.metadata.readonly"

.field public static final DRIVE_PHOTOS_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.photos.readonly"

.field public static final DRIVE_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.readonly"

.field public static final DRIVE_SCRIPTS:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.scripts"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static all()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://www.googleapis.com/auth/drive"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "https://www.googleapis.com/auth/drive.file"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "https://www.googleapis.com/auth/drive.metadata"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "https://www.googleapis.com/auth/drive.metadata.readonly"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "https://www.googleapis.com/auth/drive.photos.readonly"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "https://www.googleapis.com/auth/drive.readonly"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v1, "https://www.googleapis.com/auth/drive.scripts"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
