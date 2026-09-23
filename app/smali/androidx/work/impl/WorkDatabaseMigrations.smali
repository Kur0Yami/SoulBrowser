.class public Landroidx/work/impl/WorkDatabaseMigrations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;,
        Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;
    }
.end annotation


# static fields
.field public static final a:Landroidx/room/migration/Migration;

.field public static final b:Landroidx/room/migration/Migration;

.field public static final c:Landroidx/room/migration/Migration;

.field public static final d:Landroidx/room/migration/Migration;

.field public static final e:Landroidx/room/migration/Migration;

.field public static final f:Landroidx/room/migration/Migration;

.field public static final g:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->a:Landroidx/room/migration/Migration;

    .line 9
    .line 10
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$2;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->b:Landroidx/room/migration/Migration;

    .line 18
    .line 19
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$3;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-direct {v0, v2, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->c:Landroidx/room/migration/Migration;

    .line 26
    .line 27
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$4;

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    const/4 v2, 0x7

    .line 31
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->d:Landroidx/room/migration/Migration;

    .line 35
    .line 36
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$5;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-direct {v0, v2, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->e:Landroidx/room/migration/Migration;

    .line 44
    .line 45
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$6;

    .line 46
    .line 47
    const/16 v2, 0x9

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->f:Landroidx/room/migration/Migration;

    .line 53
    .line 54
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$7;

    .line 55
    .line 56
    const/16 v1, 0xb

    .line 57
    .line 58
    const/16 v2, 0xc

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->g:Landroidx/room/migration/Migration;

    .line 64
    .line 65
    return-void
.end method
